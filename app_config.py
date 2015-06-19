#!/usr/bin/env python

"""
Project-wide application configuration.

DO NOT STORE SECRETS, PASSWORDS, ETC. IN THIS FILE.
They will be exposed to users. Use environment variables instead.
"""
import os

PROJECT_NAME = 'Totebot2'
PROJECT_SLUG = 'totebot2'
REPOSITORY_NAME = 'totebot2'
CONFIG_NAME = PROJECT_SLUG.upper()

# PRODUCTION_S3_BUCKETS = ['apps.npr.org', 'apps2.npr.org']
# PRODUCTION_SERVERS = ['54.214.20.225']

# S3_BUCKETS = []
# SERVERS = []
# DEBUG = True

def get_secrets():
    """
    A method for accessing our secrets.
    """
    secrets = [
        '%s_HUBOT_HIPCHAT_JID' % CONFIG_NAME,
        '%s_HUBOT_HIPCHAT_PASSWORD' % CONFIG_NAME,
        '%s_HUBOT_HIPCHAT_ROOMS' % CONFIG_NAME,
        '%s_HUBOT_GOOGLE_CALENDAR_CLIENT_ID' % CONFIG_NAME,
        '%s_HUBOT_GOOGLE_CALENDAR_CLIENT_SECRET' % CONFIG_NAME,
        '%s_HUBOT_GOOGLE_CALENDAR_REFRESH_TOKEN' % CONFIG_NAME,
        '%s_HUBOT_GOOGLE_CALENDAR_ID' % CONFIG_NAME,
        '%s_HUBOT_FORECAST_API_KEY' % CONFIG_NAME
    ]
    secrets_dict = {}
    for secret in secrets:
        # Saves the secret with the old name.
        secrets_dict[secret.replace('%s_' % CONFIG_NAME, '')] = os.environ.get(secret, None)

    return secrets_dict
