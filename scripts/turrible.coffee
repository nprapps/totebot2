turrible = [
	"https://s3.amazonaws.com/npr-images/thats-turrible.jpg",
	"https://s3.amazonaws.com/npr-images/turrible-turrible.jpeg",
	"https://s3.amazonaws.com/npr-images/logic-terrible.jpg"
	]

module.exports = (robot) ->
  robot.hear /(turrible|terrible)/i, (msg) ->
    msg.send msg.random turrible