# Description:
# People think many things are about some particular topic, but ACTUALLY it's 
# about something else entirely.
#
module.exports = (robot) ->
  robot.hear /Tell me what it's about/i, (msg) ->
    nouns = ["ethics", "recipes", "cars", "tofu", "elk", "hats", "tampons", "commercials", "smartphones", "democracy"]
    modifiers = ["game", "sports", "fancy", "tyrannic", "ancient", "artisanal", "botanical", "feminine", "masculine", "educational"]
    objects = ["journalism", "media", "film criticism", "dungeons and dragons", "sandwiches", "poop", "venture capital", "capitalism", "astrophysics", "fashion", "industries"]
    
    randomElementFrom = (arr) ->
      arr[Math.floor(Math.random() * arr.length)]
    
    randomNoun = randomElementFrom nouns
    randomMod = randomElementFrom modifiers
    randomObj = randomElementFrom objects
    
    msg.send "Actually, it's about #{randomNoun} in #{randomMod} #{randomObj}."
