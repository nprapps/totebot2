image = "https://s3.amazonaws.com/uploads.hipchat.com/46822/1264985/8nDbaGJyBGn0Ou4/dolly.gif"

module.exports = (robot) ->
  robot.hear /dolly/i, (msg) ->
    msg.send image
