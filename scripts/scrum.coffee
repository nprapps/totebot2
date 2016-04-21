module.exports = (robot) ->
  robot.hear /(\bscrum)/i, (msg) ->
    msg.send "http://dl.dropboxusercontent.com/u/5245886/gifs/scrum2.gif"
    msg.send "https://appear.in/nprviz"
