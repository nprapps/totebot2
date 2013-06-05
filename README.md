# Totebot

Derived from the ubiquitous NPR tote bag, Totebot2 follows our conversations on HipChat and provides us with some ambient awareness. Also, humor.

Thanks to the [Los Angeles Times Data Desk](http://datadesk.latimes.com/) and their [copyboy project](https://github.com/datadesk/copyboy).

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
Like your new scripts? Add them to the repository and then send them along.
```
fab production master deploy
```

We don't have a staging environment yet.
