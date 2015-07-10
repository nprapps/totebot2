timesheet = [
	"http://media.giphy.com/media/QNv4mKyspa8j6/giphy.gif"
	]

module.exports = (robot) ->
  robot.hear /(timesheet)/i, (msg) ->
    msg.send msg.random timesheet
