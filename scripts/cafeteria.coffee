# Description:
#   Let us know what's for lunch.
#
# Commands:
#   hubot me want food

moment = require('moment')
jsdom = require('jsdom').jsdom

url = "http://dining.guckenheimer.com/clients/npr/FSS/fss.nsf/weeklyMenuLaunch/95RPBM~"
url += moment().startOf('week').add('days', 1).format('MM-DD-YYYY')
url += "/$file/"
url += moment().format('ddd').toLowerCase();
url += ".htm"

truckUrl = "http://foodtruckfiesta.com/dc-food-truck-list/"

module.exports = (robot) ->
    robot.respond /me want food/i, (msg) -> 
      msg
        .http(url)
        .get() (err, res, body) ->
            if err
                msg.send 'I can\'t find a menu for today.'
            else
                window = (jsdom body, null,
                  features :
                    FetchExternalResources : false
                    ProcessExternalResources : false
                    MutationEvents : false
                    QuerySelector : false
                ).createWindow()

                food = "Here's the Sound Bites menu for today: \n\n"

                $ = require('jquery').create(window)
                $('h2, span').each (index, element) =>
                    if $(element).text()
                        menu_text = $(element).html()
                                              .replace(/(<br \/>)/g, '\n')
                                              .replace(/(&nbsp;)/g, ' ')
                                              .replace(/(&amp;)/g, '&')
                        food += menu_text + '\n\n'
                msg.send food

    robot.respond /food truck me/i, (msg) -> 
      msg
        .http(truckUrl)
        .get() (err, res, body) ->
            if err
                msg.send 'I can\'t find a menu for today.'
            else
                window = (jsdom body, null,
                  features :
                    FetchExternalResources : false
                    ProcessExternalResources : false
                    MutationEvents : false
                    QuerySelector : false
                ).createWindow()

                trucks = "Here are the food trucks near Union Station today: \n\n"

                $ = require('jquery').create(window)

                truckElements = $("h2:contains('Union')").nextUntil("h2").find('a span');

                truckElements.each (index, element) =>
                    if $(element).text()
                        trucks += $(element).text() + '\n'
                msg.send trucks