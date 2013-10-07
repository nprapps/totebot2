image = "http://25.media.tumblr.com/d41559335cd5db75b0c512c3905bd8db/tumblr_mh3okvtjSe1ruw1vso2_400.gif"

module.exports = (robot) ->
  robot.hear /like a fox/i, (msg) ->
    msg.send "I heard somebody was crazy ... LIKE A FOX."
    msg.send image
