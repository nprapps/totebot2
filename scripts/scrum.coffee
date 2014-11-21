module.exports = (robot) ->
  robot.hear /(\bscrum)/i, (msg) ->
    msg.send "http://dl.dropboxusercontent.com/u/5245886/gifs/scrum2.gif"
    msg.send "https://plus.google.com/hangouts/_/calendar/czlvdDIwYm9xbTF1azNuMmFybzJuZjdraWdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ.1jap9te53gcv7shg5t4vbnub90"