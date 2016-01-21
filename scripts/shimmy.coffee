shimmy = [
	"https://dl.dropboxusercontent.com/u/532416/gifs/kainaz-shimmy.gif"
	]

module.exports = (robot) ->
  robot.hear /(shimmy|introvert|extrovert)/i, (msg) ->
    msg.send msg.random shimmy
