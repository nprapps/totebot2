turrible = "http://www.google.com/imgres?safe=off&sa=X&biw=960&bih=703&tbm=isch&tbnid=n1tOWCVf-tMPjM:&imgrefurl=http://cheezburger.com/3330194176&docid=cmP1W57B3ZfFbM&imgurl=https://i.chzbgr.com/maxW500/3330194176/hBBAD8BD8/&w=500&h=449&ei=ks2wUYrhF_Xj4APy34GIBw&zoom=1&ved=1t:3588,r:11,s:0,i:113&iact=rc&dur=825&page=1&tbnh=183&tbnw=202&start=0&ndsp=12&tx=113&ty=57"

module.exports = (robot) ->
  robot.hear /(turrible|terrible)/i, (msg) ->
    msg.send turrible