# Description:
#   BEES!
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
#  dannydb

module.exports = (robot) ->
  robot.respond /release the bees/i, (msg) ->
    msg.send "http://dl.dropboxusercontent.com/u/5245886/gifs/oprahs-bees.gif"