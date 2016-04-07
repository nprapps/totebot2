# Description:
#   The mighty sage grouse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "sage grouse"


grouse = [
  "https://49.media.tumblr.com/651166648cfec970f12ece8bf6be2ca9/tumblr_npv1bwY1K51skgyclo1_500.gif",
  "http://clminternship.org/blog/wp-content/uploads/2014/10/sage-grouse-gif.gif",
  "http://49.media.tumblr.com/cb14f98e99a201e4c7267fa266bdc28a/tumblr_nhktacttxD1rl52wjo2_500.gif",
  "https://media.giphy.com/media/XFrEwq2UMZQYg/giphy.gif",
  "https://media.giphy.com/media/vzvu5MBjrOTh6/giphy.gif",
  "https://media.giphy.com/media/YdqQBS4Ltfmpy/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /(sage grouse)/i, (msg) ->
    msg.send msg.random grouse
