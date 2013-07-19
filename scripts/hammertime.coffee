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

hammer = [
	"http://www.the90sbutton.com/images/default/mchammer.gif",
	"http://gifs.gifbin.com/1236681958_hammer-time.gif"
]

module.exports = (robot) ->
  robot.hear /(hammer time| hammer time|can't touch this| can't touch this)/i, (msg) ->
    msg.send msg.random hammer