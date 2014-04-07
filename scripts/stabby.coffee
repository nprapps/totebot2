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
  robot.hear /(shiv\b|knife|stab\b|stabb.*\b)/i, (msg) ->
    msg.send '*squilk*'
    msg.send msg.random stab