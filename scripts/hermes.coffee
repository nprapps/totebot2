# Description:
#   Display a hermes catchphrase
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hermes me - display a hermes catchphrase
#
# Author:
#   dannydb

catchphrases = [
  "Sweet lion of Zion!",
  "Sweet manatee of Galilee!",
  "Sweet llamas of the Bahamas!",
  "Sweet gorilla of Manila!",
  "Sweet something... of... someplace...",
  "Great cow of Moscow!",
  "Sweet giant anteater of Saint Anita!",
  "Sweet ghost of Babylon!",
  "Sacred boa of West and Eastern Samoa!",
  "Sacred hog of Prague!",
  "Cursed bacteria of Liberia!",
  "Sweet guinea pig of Winnipeg!",
  "Great bonda of Uganda!",
  "Sweet three-toed sloth of the ice planet Hoth!",
  "Sweet honey bee of infinity!",
  "Sweet yeti of the Serengeti!",
  "Sweet bongo of the Congo!",
  "Sweet squid of Madrid!",
  "Sweet kookaburra of Edinburgh!",
  "Sweet topology of cosmology!",
  "Sweet coincidence of Port-au-Prince",
  "Sweet orca of Mallorca!",
  "Sweet candelabra of Le Havre, LaBarbara!",
  "Sweet pony of Sierra Leone",
  "Sweet she-cattle of Seattle!",
  "Sweet Sally in the alley!*"
]

module.exports = (robot) ->
  robot.respond /hermes me/i, (msg)->
    msg.send msg.random catchphrases