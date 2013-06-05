iggy = [
    "http://www.youtube.com/watch?v=fJGE4XwnFw0",
    "http://www.youtube.com/watch?v=jQvUBf5l7Vw",
    "http://www.youtube.com/watch?v=6bLOjmY--TA",
    "http://www.youtube.com/watch?v=ZhSFV_M1Hv8",
    "http://selenasd.com/awesome/Iggyheartsrenee.mp3"
]

module.exports = (robot) ->
  robot.hear /( iggy)/i, (msg) ->
    msg.send msg.random iggy