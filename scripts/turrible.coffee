turrible = [
	"https://totebot-images.s3.amazonaws.com/thats-turrible.jpg",
	"https://totebot-images.s3.amazonaws.com/turrible-turrible.jpeg",
	"https://totebot-images.s3.amazonaws.com/logic-terrible.jpg"
	]

module.exports = (robot) ->
  robot.hear /(turrible|terrible)/i, (msg) ->
    msg.send msg.random turrible
