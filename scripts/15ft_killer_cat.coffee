image = "http://images.cuddlycomments.com/5/68114e2d21d283b0a.jpg"

module.exports = (robot) ->
  robot.hear /(killer cat)/i, (msg) ->
    msg.send '15" killer kitty!'
    msg.send image