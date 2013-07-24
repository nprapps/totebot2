image = "http://static.dannydebelius.com/img/coffee.png"

module.exports = (robot) ->
  robot.hear /(coffee\?|need caffeine)/i, (msg) ->
    msg.send image
