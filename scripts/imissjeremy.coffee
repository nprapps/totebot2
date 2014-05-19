# Description:
#   Jeremy Bowers is now an employee of The New York Times. This is the form our grief has taken.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   dannydb

jeremy = [
  "http://dl.dropboxusercontent.com/u/5245886/gifs/bowers-dance.gif",
  "http://dl.dropboxusercontent.com/u/5245886/gifs/bowers-dance2.gif",
  "http://dl.dropboxusercontent.com/u/5245886/gifs/bowers-raisetheroof.gif"
]

module.exports = (robot) ->
  robot.hear /miss (jeremy|bowers)/i, (msg) ->
    msg.send ':('
    msg.send msg.random jeremy