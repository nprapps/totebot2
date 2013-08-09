# Description:
#   Let us know what's for lunch.
#
# Commands:
#   hubot meatwad me - get a random Meatwad

meatwad = [
	"https://s3.amazonaws.com/meatwad/meatwad_cigs.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_food.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_fun.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_hell_no.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_last_time.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_love.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_tired.mp3",
	"https://s3.amazonaws.com/meatwad/meatwad_whiskey.mp3"
]

base_meat = "https://s3.amazonaws.com/meatwad/meatwad_"

module.exports = (robot) ->
  robot.hear /meatwad me/i, (msg) ->
    msg.send msg.random meatwad

  robot.hear /meatwad gimme cigarettes/i, (msg) ->
  	msg.send base_meat + 'cigs.mp3'

  robot.hear /meatwad gimme whiskey/i, (msg) ->
  	msg.send base_meat + 'whiskey.mp3'

  robot.hear /meatwad gimme food/i, (msg) ->
  	msg.send base_meat + 'food.mp3'

  robot.hear /meatwad let's have fun/i, (msg) ->
  	msg.send base_meat + 'fun.mp3'

  robot.hear /meatwad hell no/i, (msg) ->
  	msg.send base_meat + 'hell_no.mp3'

  robot.hear /meatwad this is the last time/i, (msg) ->
  	msg.send base_meat + 'last_time.mp3'

  robot.hear /meatwad I'm tired/i, (msg) ->
  	msg.send base_meat + 'tired.mp3'

