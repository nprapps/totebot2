image = "http://static.dannydebelius.com/img/coffee.png"

module.exports = (robot) ->
  robot.hear /(coffee|caffeine)/i, (msg) ->
    msg.send "COFFEE!!!"
    msg.send image
