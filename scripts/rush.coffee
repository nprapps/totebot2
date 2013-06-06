rush = [
    "http://www.youtube.com/watch?v=KNZru4JG_Uo",
    "http://www.youtube.com/watch?v=K-NbGo7yaUU",
    "http://www.youtube.com/watch?v=0lpVjXwAfm0",
    "http://www.youtube.com/watch?v=JTD1QW3SM60",
    "http://www.youtube.com/watch?v=h59mDlBSt7o",
    "http://www.youtube.com/watch?v=uwXjnVICb3I",
    "http://www.youtube.com/watch?v=5Tq-UsaRchI",
    "http://www.youtube.com/watch?v=ksKjR9uPc6E"
]

module.exports = (robot) ->
  robot.hear /( rush|2112| geddy| peart| of salesmen)/i, (msg) ->
    msg.send msg.random rush