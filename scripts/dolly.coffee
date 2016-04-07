image = "https://s3.amazonaws.com/uploads.hipchat.com/46822/1264985/9IlDO4dkI03gHCY/dolly-new.gif"

module.exports = (robot) ->
  robot.hear /dolly/i, (msg) ->
    msg.send image
