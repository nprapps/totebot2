# Description:
#   The mighty sage grouse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "sage grouse"


grouse = [
  "https://media.giphy.com/media/vzvu5MBjrOTh6/giphy.gif",
  "https://media.giphy.com/media/XFrEwq2UMZQYg/giphy.gif",
  "https://media.giphy.com/media/YdqQBS4Ltfmpy/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /(sage grouse)/i, (msg) ->
    msg.send msg.random grouse
