# Description:
#   Let us know what's for lunch.
#
# Commands:
#   hubot what's for lunch?

moment = require('moment')
jsdom = require('jsdom').jsdom
url = "http://dining.guckenheimer.com/clients/npr/FSS/fss.nsf/weeklyMenuLaunch/95RPBM~"
url += moment().startOf('week').add('days', 1).format('MM-DD-YYYY')
url += "/$file/"
url += moment().format('ddd').toLowerCase();
url += ".htm"

module.exports = (robot) ->
    robot.respond /me want food/i, (msg) -> 
      msg
        .http(url)
        .get() (err, res, body) ->
                window = (jsdom body, null,
                  features :
                    FetchExternalResources : false
                    ProcessExternalResources : false
                    MutationEvents : false
                    QuerySelector : false
                ).createWindow()

                $ = require('jquery').create(window)
                $('body').remove('a')
                food = $('body').html()
                console.log(url)
                msg.send food