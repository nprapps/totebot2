timesheet = [
	"http://media.giphy.com/media/QNv4mKyspa8j6/giphy.gif",
	"https://s3.amazonaws.com/uploads.hipchat.com/46822/1264985/GyDJDhDx8qv6iEM/adcwjdjr5j.gif",
	"http://cdn.meme.am/instances/500x/46015959.jpg",
	]

module.exports = (robot) ->
  robot.hear /(timesheet)/i, (msg) ->
    msg.send msg.random timesheet
