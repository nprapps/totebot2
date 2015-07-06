# Description:
#   Help express our stabbyness
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   dannydb

stab = [
  "http://media.giphy.com/media/nQLeO4IEHtVT2/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /stabby/i, (msg) ->
    msg.send '*squilk*'
    msg.send msg.random stab