quest = [
    "http://www.youtube.com/watch?v=dmaBXE17S00",
    "http://www.youtube.com/watch?v=lRrM6tfOHds",
    "http://www.youtube.com/watch?v=xO_VO0clfsY",
    "http://www.youtube.com/watch?v=WILyWmT2A-Q",
    "http://www.youtube.com/watch?v=Q6TLWqn82J4",
    "http://www.youtube.com/watch?v=WHRnvjCkTsw",
    "http://www.youtube.com/watch?v=OIah18jcJko"
]

module.exports = (robot) ->
  robot.hear /( tribe called quest)/i, (msg) ->
    msg.send msg.random quest