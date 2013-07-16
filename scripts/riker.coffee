# Description:
#   Load a random Riker from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot riker me - Receive an inspirational Riker

rikers = [
  "https://gimmebar-assets.s3.amazonaws.com/51e59d9ecd8c9.gif",
  "https://gimmebar-assets.s3.amazonaws.com/51e59d14aa877.gif",
  "https://gimmebar-assets.s3.amazonaws.com/51e59b7b02dfa.gif",
  "https://gimmebar-assets.s3.amazonaws.com/51e5a02bbd8fc.gif"
]

reverseRiker = "https://gimmebar-assets.s3.amazonaws.com/51e59d9ecd8c9.gif"

infiniteRiker = "https://gimmebar-assets.s3.amazonaws.com/51e59b7b02dfa.gif"

module.exports = (robot) ->
  robot.respond /(riker me|make it so)/i, (msg) ->
    msg.send rikers[Math.floor(Math.random()*rikers.length)]

  robot.respond /(reverse riker|reverse riker me)/i, (msg) ->
  	msg.send reverseRiker

  robot.respond /(infinite riker|infinite riker me)/i, (msg) ->
  	msg.send infiniteRiker

  robot.respond /how many rikers are there/i, (msg) ->
    msg.send "There are #{rikers.length} Rikers."