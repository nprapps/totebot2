module.exports = (robot) ->

  robot.router.post "/hubot/scoutapp", (req, res) ->

    room = "#NPR_APPS"

    data = JSON.parse req.body.payload

    data_string = "Scout #{data.severity} - #{data.server_name} on host #{data.server_hostname} #{data.lifecycle}ed - #{data.plugin_name} - #{data.title} - Current value #{data.metric_name}=#{data.metric_value} - Details: #{data.url}"

    robot.messageRoom room, data_string
    robot.messageRoom room, data.sparkline_url if data.sparkline_url

    res.writeHead 204, { 'Content-Length': 0 }
    res.end()
