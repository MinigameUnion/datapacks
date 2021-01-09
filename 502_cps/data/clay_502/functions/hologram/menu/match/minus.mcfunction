data modify storage clay_502:storage match.display.list append from storage clay_502:storage match.display.list[0]
data remove storage clay_502:storage match.display.list[0]

##LOOP
#scoreboard players remove #MATCH num_502 1
#execute if score #MATCH num_502 matches 1.. run function clay_502:hologram/menu/tutorial/match/minus

function clay_502:hologram/menu/match/display