# Description:
#   OK.
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
#   tylrfishr

module.exports = (robot) ->
  robot.hear /giv(e|en) up|quit(?<!e)/i, (msg) ->
    msg.send "http://apps.npr.org/totebot/giveup.png"