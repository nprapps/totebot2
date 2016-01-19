timesheet = [
	"http://media.giphy.com/media/QNv4mKyspa8j6/giphy.gif",
	"https://s3.amazonaws.com/uploads.hipchat.com/46822/1264985/GyDJDhDx8qv6iEM/adcwjdjr5j.gif",
	"https://pbs.twimg.com/media/CUqb5KiWIAE6_CQ.png",
	"https://pbs.twimg.com/media/B3TtM8FIEAAtC6W.png",
	"https://s3.amazonaws.com/uploads.hipchat.com/46822/385675/GKmbqRVq3N0KBUj/upload.png"
	]

module.exports = (robot) ->
  robot.hear /(timesheet|time sheet)/i, (msg) ->
    msg.send msg.random timesheet
