module.exports = (robot) ->
  robot.hear /( hangout|hangout|scrum| scrum)/i, (msg) ->
    msg.send "https://plus.google.com/hangouts/_/ce10fc7c88b1fc271d5bd8a20ce99cae745c18e5?authuser=0&hl=en"