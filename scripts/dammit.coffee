module.exports = (robot) ->
  robot.hear /(damnit|dammit)/i, (msg) ->
    msg.send "Stiles!"
