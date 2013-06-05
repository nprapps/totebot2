iggy = [
    "http://www.youtube.com/watch?v=fJGE4XwnFw0"
]

module.exports = (robot) ->
  robot.hear /(play me iggy|play some iggy|play iggy)/i, (msg) ->
    msg.send msg.random iggy