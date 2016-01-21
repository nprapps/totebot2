module.exports = (robot) ->
  robot.hear /(thunder|struck|snow)/i, (msg) ->
    msg.send "https://www.youtube.com/watch?v=v2AC41dglnM"
