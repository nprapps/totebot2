# Description:
#   Let us know what's for lunch.
#
# Commands:
#   hubot meatwad me - get a random Meatwad

meatwad = [
	"https://s3.amazonaws.com/meatwad/meatwad_cigs.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_sand.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_fun.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_hell_no.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_last_time.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_love.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_tired.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_whiskey.mp3"
]

module.exports = (robot) ->
  robot.hear /meatwad me/i, (msg) ->
    msg.send msg.random meatwad