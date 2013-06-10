module.exports = (robot) ->
  robot.hear /(hangout)/i, (msg) ->
    msg.send "Hang out, man! https://hangoutsapi.talkgadget.google.com/hangouts/"
