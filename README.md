# Totebot

Derived from the ubiquitous NPR tote bag, Totebot2 follows our conversations on HipChat and provides us with some ambient awareness. Also, humor.

Additional thanks to the [Los Angeles Times Data Desk](http://datadesk.latimes.com/) and their [copyboy project](https://github.com/datadesk/copyboy).

## Some light reading
* [The hubot official docs](http://hubot.github.com/)
* [hubot-hipchat](https://github.com/hipchat/hubot-hipchat)
* [More hubot scripts](https://github.com/github/hubot-scripts/tree/master/src/scripts)

## Initial setup

1. Create a [new HipChat account](https://www.hipchat.com/help/page/how-do-i-invite-other-users/) for your bot to use. Stay signed in to the account - we'll need to access its account settings later.

1. Add the proper environment variables to your ```.bash_profile```. (Stored in our team environment variables file &mdash; ask David, Tyler or Chris.)
```
export HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export HUBOT_HIPCHAT_PASSWORD=password
export HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export HUBOT_LOG_LEVEL=debug
```

1. Make sure native dependencies are installed:
```
(e.g. OS X with brew)
% brew install icu4c
% brew link icu4c

(e.g. Linux with apt-get)
% apt-get install libexpat1-dev
% apt-get install libicu-dev
```

1. Install `hubot` from npm, if you don't already have it:
```
% npm install --global hubot
```

1. Switch to the new `hubot` directory:
```
% cd <above path>
```

1. Install `hubot` dependencies:
```
% npm install
```

1. In your main projects folder (e.g., ~/src/), clone this repo and set up a virtual environment
```
cd ~/src/
git clone git@github.com:nprapps/totebot2.git
cd totebot2
mkvirtualenv totebot2
```

1. Install required libraries
```
pip install -r requirements.txt
npm install
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
```


## Local development

1. Start the totebot virtualenv
```
cd ~/src/totebot2
workon totebot2
```

1. Start Hubot
```
Hubot
```

Hubot will run through the scripts in your ```scripts``` folder and let you know about any errors or warnings. Then it will appear to stall. Press the ```enter``` key to bring up the ```Hubot >``` prompt.

If you're testing a command to be directed specifically at Totebot (for example, ```@totebot next train```), you will want to address ```@hubot``` at the prompt (```@hubot next train```).


## Deployment

1. Make sure you've exported prefixed versions of our environment variables like so:
```
export TOTEBOT2_HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export TOTEBOT2_HUBOT_HIPCHAT_PASSWORD=password
export TOTEBOT2_HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export TOTEBOT2_HUBOT_LOG_LEVEL=debug
```

1. Commit your new scripts to the repository.

1. Deploy.
```
fab utils master deploy
```

We don't have a staging environment yet.

1. To test your script in HipChat, start a conversation with Totebot (like you would another person) and type in your commands.