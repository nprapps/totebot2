# Totebot

Derived from the ubiquitous NPR tote bag, Totebot2 follows our conversations on HipChat and provides us with some ambient awareness. Also, humor.

Additional thanks to the [Los Angeles Times Data Desk](http://datadesk.latimes.com/) and their [copyboy project](https://github.com/datadesk/copyboy).

## Some light reading
* [The hubot official docs](http://hubot.github.com/)
* [hubot-hipchat](https://github.com/hipchat/hubot-hipchat)
* [More hubot scripts](https://github.com/github/hubot-scripts/tree/master/src/scripts)

## Local development
1. Create a [new HipChat account](https://www.hipchat.com/help/page/how-do-i-invite-other-users/) for your bot to use. Stay signed in to the account - we'll need to access its account settings later.

1. Make sure native dependencies are installed:

        (e.g. OS X with brew)
        % brew install icu4c
        % brew link icu4c

        (e.g. Linux with apt-get)
        % apt-get install libexpat1-dev
        % apt-get install libicu-dev

1. Install `hubot` from npm, if you don't already have it:

        % npm install --global hubot

1. Switch to the new `hubot` directory:

        % cd <above path>

1. Install `hubot` dependencies:

        % npm install

1. Export the proper environment variables. Talk to Jeremy or Chris about these values.
```
export HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export HUBOT_HIPCHAT_PASSWORD=password
export HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export HUBOT_LOG_LEVEL=debug
```

## Deployment
1. Make sure you've exported prefixed versions of our environment variables like so:
```
export TOTEBOT2_HUBOT_HIPCHAT_JID=1111_2222@chat.hipchat.com
export TOTEBOT2_HUBOT_HIPCHAT_PASSWORD=password
export TOTEBOT2_HUBOT_HIPCHAT_ROOMS=1111_name@conf.hipchat.com
export TOTEBOT2_HUBOT_LOG_LEVEL=debug
```

1. Add your new scripts to the repository and send them along.
```
fab production master deploy
```

We don't have a staging environment yet.
