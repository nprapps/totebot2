# Description:
#   It's a little bit tangy.
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
#   dannydb

module.exports = (robot) ->
  robot.hear /tangy/i, (msg) ->
    msg.send "https://gimmebar-assets.s3.amazonaws.com/5252fb19a43e3.gif"