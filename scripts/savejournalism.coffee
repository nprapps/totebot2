# Description:
#   Journalism saved!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   will X save journalism?


journalism_saved = "http://31.media.tumblr.com/b08be26bae50a6f228278f059d194fcb/tumblr_mjjvjgeLiU1r9uuuso1_500.gif"

module.exports = (robot) ->
  robot.hear /(save journalism)/i, (msg) ->
    msg.send journalism_saved
