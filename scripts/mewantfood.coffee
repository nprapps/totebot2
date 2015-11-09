# Description:
#   Let us know what's for lunch.
#
# Commands:
#   hubot me want food - show today's Sound Bites menu
#   hubot food truck me - show a list of food trucks near Union Station

moment = require('moment')
jsdom = require('jsdom').jsdom

truckUrl = "http://foodtruckfiesta.com/dc-food-truck-list/"

get_soundbites_menu = (msg) ->
    msg.send 'Here\'s the SoundBites menu for this week: https://intranet.npr.org/intranet/publish/Main/Employee_Resources/Sound_Bites_Cafe.php'
  # url = "http://dining.guckenheimer.com/clients/npr/FSS/fss.nsf/weeklyMenuLaunch/95RPBM~"
  # url += moment().startOf('week').add('days', 1).format('MM-DD-YYYY')
  # url += "/$file/"
  # url += moment().format('ddd').toLowerCase()
  # url += ".htm"
  # msg
  #   .http(url)
  #   .get() (err, res, body) ->
  #       if err
  #           msg.send 'I can\'t find a menu for today.'
  #       else
  #           window = (jsdom body, null,
  #             features :
  #               FetchExternalResources : false
  #               ProcessExternalResources : false
  #               MutationEvents : false
  #               QuerySelector : false
  #           ).createWindow()
  #
  #           food = "Here's the Sound Bites menu for today: \n\n"
  #
  #           $ = require('jquery').create(window)
  #           $('h2, span').each (index, element) =>
  #               if $(element).text()
  #                   menu_text = $(element).html()
  #                                         .replace(/(<br \/>)/g, '\n')
  #                                         .replace(/(&nbsp;)/g, ' ')
  #                                         .replace(/(&amp;)/g, '&')
  #                   food += menu_text + '\n'
  #                   if element.style['0'] != 'font-weight'
  #                     food += '\n'
  #           msg.send food

get_food_trucks = (msg) ->
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

            trucks = "Here are the food trucks near us today: \n"
            mapAreas = ['NoMa', 'CNN', 'Union Station']
            $ = require('jquery').create(window)

            for area in mapAreas
              selector = "h2:contains(" + area + ")"
              truckElements = $(selector).nextUntil("h2").find('a')
              if truckElements.length > 0
                trucks += '\n## ' + area + '\n'
                truckElements.each (index, element) =>
                  trucks += $(element).find('span').text() + ' ' + $(element).attr('href') + '\n'

            trucks += '\nhttp://foodtruckfiesta.com/apps/maplarge.html'

            msg.send trucks

module.exports = (robot) ->
    robot.respond /me want food|menu me|what's for lunch|lunch/i, (msg) ->
      get_soundbites_menu(msg)
      get_food_trucks(msg)

    robot.respond /food truck me/i, (msg) ->
      get_food_trucks(msg)

    robot.hear /lunch/i, (msg) ->
      name = msg.message.user.name
      if name == 'Brian Boyer'
        get_soundbites_menu(msg)
        get_food_trucks(msg)
