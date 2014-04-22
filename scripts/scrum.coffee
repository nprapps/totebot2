module.exports = (robot) ->
  robot.hear /(\bscrum)/i, (msg) ->
	msg.send "https://s3-eu-west-1.amazonaws.com/uploads-eu.hipchat.com/46822/386513/y601TRztmDgXl5O/scrum.gif"
    msg.send "https://plus.google.com/hangouts/_/calendar/czlvdDIwYm9xbTF1azNuMmFybzJuZjdraWdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ.1jap9te53gcv7shg5t4vbnub90"