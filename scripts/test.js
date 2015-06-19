// Description:
//   javascript
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   hubot do you understand plain javascript?

module.exports = function(robot) {
    robot.respond(/do you understand plain javascript\?/i, function(msg){
        msg.reply('Indeed. Coffeescript makes my head hurt.');
    });
}
