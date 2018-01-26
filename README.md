# Totebot

**This project is no longer maintained. We have updated javascript dependencies due to github security warning but have not tested the actual impact of that measure on the app functionality.**

Derived from the ubiquitous NPR tote bag, Totebot2 follows our conversations on HipChat and provides us with some ambient awareness. Also, humor.

Additional thanks to the [Los Angeles Times Data Desk](http://datadesk.latimes.com/) and their [copyboy project](https://github.com/datadesk/copyboy).

## Some light reading
* [The hubot official docs](http://hubot.github.com/)
* [hubot-hipchat](https://github.com/hipchat/hubot-hipchat)
* [More hubot scripts](https://github.com/github/hubot-scripts/tree/master/src/scripts)

## Initial setup

* Create a [new HipChat account](https://www.hipchat.com/help/page/how-do-i-invite-other-users/) for your bot to use. Stay signed in to the account - we'll need to access its account settings later.

* Add the proper environment variables to your `.bash_profile` (Stored in our team environment variables file &mdash; ask David, Tyler or Chris). These unprefixed versions of the hubot environment variables will be used for local development.
```
export HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export HUBOT_HIPCHAT_PASSWORD=password
export HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export HUBOT_LOG_LEVEL=debug
```

* Add prefixed versions of the environment variables to `.bash_profile` (Also stored in our team environment variables file). The prefixed versions are used by the `fab [target] render_confs` command to deploy secrets to the server and are necessary in order to run multiple hubots without sharing API keys.
```
export TOTEBOT2_HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export TOTEBOT2_HUBOT_HIPCHAT_PASSWORD=password
export TOTEBOT2_HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export TOTEBOT2_HUBOT_LOG_LEVEL=debug
```

* In your main projects folder (e.g., ~/src/), clone this repo and set up a virtual environment
```
cd ~/src/
git clone git@github.com:nprapps/totebot2.git
cd totebot2
mkvirtualenv totebot2
```

* Install required libraries
```
pip install -r requirements.txt
npm install
brew install icu4c
brew link icu4c
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
```

* Install `hubot` from npm, if you don't already have it:
```
npm install --global hubot
```

* Switch to the new `hubot` directory (it might be `/usr/local/lib/node_modules/hubot`) and install dependencies:
```
cd <above path>
npm install
```

## Local development

* Start the totebot virtualenv
```
cd ~/src/totebot2
workon totebot2
```

* Start Hubot
```
hubot
```

Hubot will run through the scripts in your `scripts` folder and let you know about any errors or warnings. Then it will appear to stall. Press the `enter` key to bring up the `Hubot >` prompt.

If you're testing a command to be directed specifically at Totebot (for example, `@totebot next train`), you will want to address `@hubot` at the prompt (`@hubot next train`).


## Deployment

* Make sure you've exported prefixed versions of our environment variables (see "Initial Setup")

* Commit your new scripts to the repo.

* Add any necessary environment variables to `app_config.py` and `totebot2.conf`

* Deploy environment variables to the server (if changed)
```
fab utils deploy_confs
```

* Deploy scripts.
```
fab utils master deploy
```

We don't have a staging environment yet.

* To test your script in HipChat, start a conversation with Totebot (like you would another person) and type in your commands.

## Maintenance

* Sometimes, Totebot goes away. :( To restart:
```
fab utils restart_init
```
