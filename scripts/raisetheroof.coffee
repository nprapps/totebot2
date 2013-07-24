# Description:
#   Get up and stretch
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   raise the roof - cartoon jeremy leads us in some office exercise

image = "http://static.dannydebelius.com/img/raisetheroof.gif"

module.exports = (robot) ->
  robot.hear /raise the roof/i, (msg) ->
    msg.send image