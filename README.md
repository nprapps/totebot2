# Totebot

Derived from the ubiquitous NPR tote bag, Totebot follows our IRC room on Grove.io and helps us set up chats, monitor our servers, and pick us up when we're down.

Thanks to the [Los Angeles Times Data Desk](http://datadesk.latimes.com/) and their [copyboy project](https://github.com/datadesk/copyboy).

## Local development
Make sure you have coffee installed globally. Many problems involve not having the coffee executable within your path.
```
sudo npm install coffee-script -g
```

Check out the repository and cd into it. Then, install the NPM requirements.
```
npm install
```

Export the proper environment variables. Talk to Jeremy or Chris about these values.
```
export KEY_FILENAME='~/.ssh/nprapps/nprapps.pem'
export PORT=9001
export HUBOT_IRC_IP='10.20.30.40'
export HUBOT_IRC_NICK='irc_nick'
export HUBOT_IRC_NICKSERV_PASSWORD='nickserv_password'
export HUBOT_IRC_PASSWORD='irc_password'
export HUBOT_IRC_ROOMS='#room0, #room1'
export HUBOT_IRC_SERVER='irc.server.com'
```

## Deployment
Like your new scripts? Add them to the repository and then send them along.
```
fab production master deploy
```

We don't have a staging environment yet. I'll get on that soon, Brian.
