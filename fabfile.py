#!/usr/bin/env python

import os

from fabric.api import *
from jinja2 import Template

import app_config

"""
Base configuration
"""
env.project_name = 'totebot2'
env.deployed_name = 'totebot2'
env.deploy_to_servers = False
env.repo_url = 'git://github.com/nprapps/totebot2.git'
env.alt_repo_url = None
env.user = 'ubuntu'
env.python = 'python2.7'
env.path = '/home/%(user)s/apps/%(project_name)s' % env
env.repo_path = '%(path)s' % env
env.forward_agent = True
env.user = 'ubuntu'

SERVICES = [('%(project_name)s' % env, '/etc/init/', 'conf')]

"""
Environments
"""
def utils():
    env.settings = 'utils'
    env.s3_buckets = ['apps.npr.org', 'apps2.npr.org']
    env.hosts = ['54.244.243.254']


"""
Branches
"""
def stable():
    """
    Work on stable branch.
    """
    env.branch = 'stable'


def master():
    """
    Work on development branch.
    """
    env.branch = 'master'


def branch(branch_name):
    """
    Work on any specified branch.
    """
    env.branch = branch_name


def _confirm_branch():
    """
    Confirm a production deployment.
    """
    if (env.settings == 'utils' and env.branch != 'stable'):
        answer = prompt("You are trying to deploy the '%(branch)s' branch to production.\nYou should really only deploy a stable branch.\nDo you know what you're doing?" % env, default="Not at all")
        if answer not in ('y','Y','yes','Yes','buzz off','screw you'):
            exit()


"""
Setup
"""
def setup():
    """
    Setup servers for deployment.
    """
    require('settings', provided_by=[utils])
    require('branch', provided_by=[stable, master, branch])

    setup_directories()
    clone_repo()
    checkout_latest()
    install_requirements()
    deploy_confs()


def setup_directories():
    """
    Create server directories.
    """
    require('settings', provided_by=[utils])

    run('mkdir -p %(path)s' % env)


def clone_repo():
    """
    Clone the source repository.
    """
    require('settings', provided_by=[utils])

    run('git clone %(repo_url)s %(repo_path)s' % env)

    if env.get('alt_repo_url', None):
        run('git remote add bitbucket %(alt_repo_url)s' % env)


def checkout_latest(remote='origin'):
    """
    Checkout the latest source.
    """
    require('settings', provided_by=[utils])

    env.remote = remote

    run('cd %(repo_path)s; git fetch %(remote)s' % env)
    run('cd %(repo_path)s; git checkout %(branch)s; git pull %(remote)s %(branch)s' % env)


def install_requirements():
    """
    Install the latest requirements.
    """
    require('settings', provided_by=[utils])

    run('cd %(repo_path)s; npm install' % env)


def render_confs():
    """
    Renders server configurations.
    """
    require('settings', provided_by=[utils])

    with settings(warn_only=True):
        local('mkdir confs/rendered')

    context = app_config.get_secrets()
    context['PROJECT_SLUG'] = app_config.PROJECT_SLUG
    context['PROJECT_NAME'] = app_config.PROJECT_NAME
    context['REPOSITORY_NAME'] = app_config.REPOSITORY_NAME
    context['DEPLOYMENT_TARGET'] = env.settings

    for service, remote_path, extension in SERVICES:
        file_path = 'confs/rendered/%s.%s' % (service, extension)

        with open('confs/%s.%s' % (service, extension),  'r') as read_template:

            with open(file_path, 'wb') as write_template:
                payload = Template(read_template.read())
                write_template.write(payload.render(**context))


def deploy_confs():
    """
    Deploys rendered server configurations to the specified server.
    """
    require('settings', provided_by=[utils])

    render_confs()

    with settings(warn_only=True):

        for service, remote_path, extension in SERVICES:
            file_name = '%s.%s' % (service, extension)
            local_path = 'confs/rendered/%s' % file_name
            put(local_path, remote_path, use_sudo=True)
        sudo('initctl reload-configuration')


"""
Deployment
"""
def restart_init():
    require('settings', provided_by=[utils])
    sudo('service totebot restart')


def deploy(remote='origin'):
    require('settings', provided_by=[utils])
    require('branch', provided_by=[stable, master, branch])

    _confirm_branch()
    checkout_latest(remote)
    install_requirements()
    restart_init()


"""
Destruction
"""
def shiva_the_destroyer():
    """
    Deletes the app from s3
    """
    with settings(warn_only=True):
        s3cmd = 's3cmd del --recursive %s'

        for bucket in env.s3_buckets:
            env.s3_bucket = bucket
            local(s3cmd % ('s3://%(s3_bucket)s/%(deployed_name)s' % env))

        if env.get('deploy_to_servers', False):
            run('rm -rf %(path)s' % env)
