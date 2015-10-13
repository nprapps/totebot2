salad = [
	"http://i.imgur.com/sR4dUDl.gif"
	]

module.exports = (robot) ->
  robot.hear /(salad)/i, (msg) ->
    msg.send msg.random salad
