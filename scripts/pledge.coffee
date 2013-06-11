antics = [
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-928360.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-928381.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927645.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927644.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927646.mp3"
]

module.exports = (robot) ->
  robot.hear /(promise|pledge|gift|bequest|bequeath|donate|membership)/i, (msg) ->
    msg.send msg.random antics
