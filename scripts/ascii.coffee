# Description:
#   ASCII art
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot ascii me <font> <text> - Show text in ascii art
#   hubot list ascii fonts - Show a list of the available fonts
# 
# Author:
#   dannydb
util = require('util')
asciimo = require('asciimo').Figlet
fonts = ["3-d", "3x5", "5lineoblique", "acrobatic", "alligator", "alligator2", "alphabet", "avatar", "banner", "banner3-D", "banner3", "banner4", "barbwire", "basic", "bell", "bigchief", "binary", "broadway", "bulbhead", "calgphy2", "caligraphy", "catwalk", "chunky", "coinstak", "colossal", "computer", "contessa", "contrast", "cosmic", "cosmike", "crawford", "cricket", "cyberlarge", "cybermedium", "cybersmall", "decimal", "diamond", "doh", "doom", "dotmatrix", "double", "drpepper", "dwhistled", "eftichess", "eftifont", "eftipiti", "eftirobot", "eftitalic", "eftiwater", "epic", "fender", "fourtops", "fraktur", "fuzzy", "goofy", "gothic", "graceful", "gradient", "graffiti", "hex", "hollywood", "invita", "isometric1", "isometric2", "isometric3", "isometric4", "italic", "jazmine", "katakana", "kban", "l4me", "larry3d", "lcd", "letters", "linux", "lockergnome", "madrid", "marquee", "maxfour", "mike", "mirror", "nancyj-fancy", "nancyj-underlined", "nancyj", "nipples", "nvscript", "o8", "octal", "ogre", "os2", "pawp", "peaks", "pebbles", "pepper", "poison", "puffy", "pyramid", "rectangles", "relief", "relief2", "rev", "roman", "rounded", "rowancap", "rozzo", "runyc", "sblood", "serifcap", "short", "slide", "slscript", "smisome1", "smkeyboard", "speed", "stacey", "stampatello", "starwars", "stellar", "stop", "straight", "tanja", "thick", "thin", "threepoint", "ticks", "ticksslant", "tinker-toy", "tombstone", "trek", "twopoint", "univers", "usaflag", "weird", "whimsy"]

module.exports = (robot) ->
	robot.respond /ascii( me)? (\S+) (.+)/i, (msg) ->
		if fonts.indexOf(msg.match[2]) > -1 and msg.match[3].length > 0
	    asciimo.write msg.match[3], msg.match[2], (art) ->
		    msg.send util.puts('\n\n\n' + art)
		else
			msg.send "I couldn't find that font. Try again?"

	robot.respond /list ascii fonts/i, (msg) ->
		text = "Hello, I am asciimo"
		fontList = "\n"

		printFont = (font) ->
	    asciimo.write text, font, (art) ->
	    	return fontList + util.puts(font + ':\n\n' + art)

	  printFont font for font in fonts

	  msg.send fontList