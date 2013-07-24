image = "http://static.dannydebelius.com/img/raisetheroof.gif"

module.exports = (robot) ->
  robot.hear /raise the roof/i, (msg) ->
    msg.send image