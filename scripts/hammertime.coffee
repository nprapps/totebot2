# Description:
#   Load a random Riker from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hammer time - Can't touch this

hammer = "http://www.the90sbutton.com/images/default/mchammer.gif"

module.exports = (robot) ->
  robot.hear /(hammer time|Hammer Time|can't touch this)/i, (msg) ->
    msg.send "Can't Touch This"
    msg.send hammer