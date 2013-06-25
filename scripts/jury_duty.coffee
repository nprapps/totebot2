duty = [
  "http://25.media.tumblr.com/tumblr_lwu67zPixd1qaxu5qo1_500.gif",
  "http://cdn04.cdnwp.thefrisky.com/wp-content/uploads/2013/01/28/liz-lemon-princess-leia.gif",
  "http://gloog.us/wordpress/wp-content/uploads/2012/06/jury-duty.gif",
  "http://i36.photobucket.com/albums/e31/Okamidono/jury-duty-o.gif",
  "http://cdn.meme.li/instances/400x/28906840.jpg"
]

module.exports = (robot) ->
  robot.hear /(jury)/i, (msg) ->
    msg.send msg.random duty