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
  "http://bukk.it/caffeine.gif",
  "https://38.media.tumblr.com/5bbfd7bb60504d3cd8088d8fcd342b61/tumblr_ntm93aYvF51rmehl4o1_1280.gif",
  "https://pbs.twimg.com/media/B3TtM8FIEAAtC6W.png"
]

module.exports = (robot) ->
  robot.hear /(coffee\?|starbucks|need caffeine)/i, (msg) ->
    msg.send msg.random coffee
