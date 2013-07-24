# Description:
#   Illustrate our caffeine dependency
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   coffee?


coffee = [
  "http://static.dannydebelius.com/img/coffee.png",
  "http://bukk.it/coffee.gif",
  "http://bukk.it/coffeecoffee.gif",
  "http://bukk.it/caffeine.gif"
]

module.exports = (robot) ->
  robot.hear /(coffee\?|need caffeine)/i, (msg) ->
    msg.send msg.random coffee
