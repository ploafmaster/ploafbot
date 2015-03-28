# Description:
# A fun little responder script based on the classic XKCD "Sandwich" comic:
# https://xkcd.com/149/
#
module.exports = (robot) ->
#
   robot.hear /(^[a-z]+).*make me a sandwich.*/i, (msg) ->
     godMode = msg.match[1]
     if godMode is "sudo" 
       msg.reply "Okay."
       msg.emote "makes a sandwich."
     else
       msg.reply "What? Make it yourself."

