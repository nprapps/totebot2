# Description:
#   Displays a random youtube of an eagle kicking ass when certain phrases are used.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   @palewire

images = [
  "http://www.youtube.com/watch?v=33DWqRyAAUw" # red-tailed hawk screaming
  "http://www.youtube.com/watch?v=hecXupPpE9o" # Bald Eagle catches salmon
  "http://www.youtube.com/watch?v=6R6E62hHLpM" # Bald Eagle Catching Fish in Pond
]

module.exports = (robot) ->
  robot.hear /\bm(e|u)rica\b/i, (msg) ->
    msg.send msg.random images
