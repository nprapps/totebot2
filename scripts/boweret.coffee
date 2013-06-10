image = "http://static.dannydebelius.com/img/boweret.gif"

module.exports = (robot) ->
  robot.hear /(boweret)/i, (msg) ->
    msg.send "HEHEHE HAWHAWHAW"
    msg.send image
