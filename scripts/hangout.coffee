module.exports = (robot) ->
  robot.hear /(hangout)/i, (msg) ->
    msg.send "https://plus.google.com/hangouts/_/25e1f11eb6db7797a37a7f0bc84c661cc82df6d2?authuser=0&hl=en"