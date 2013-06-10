image = "http://static.dannydebelius.com/img/boweret.gif"

module.exports = (robot) ->
  robot.hear /(boweret|hehehe)/i, (msg) ->
    msg.send "HAW HAW HAW"
    msg.send image
