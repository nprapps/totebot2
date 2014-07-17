nope = "http://dl.dropboxusercontent.com/u/5245886/gifs/em-no.gif"

module.exports = (robot) ->
  robot.hear /bogle no/i, (msg) ->
    msg.send nope

  robot.hear /\b(no)\b$/i, (msg) ->
  	name = msg.message.user.name
  	if name == 'Emily Bogle'
    msg.send nope