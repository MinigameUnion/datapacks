data modify storage clay_502:storage match.display.list prepend from storage clay_502:storage match.display.list[-1]
data remove storage clay_502:storage match.display.list[-1]

##LOOP
#scoreboard players add #MATCH num_502 1
#execute if score #MATCH num_502 matches ..-1 run function clay_502:hologram/menu/tutorial/match/plus

function clay_502:hologram/menu/match/display