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
        msg.reply('Definitely. Plain javascript is so on fleek.');
    });
}
