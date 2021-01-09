execute store result score #MATCH num_502 run scoreboard players set #MATCH match_id_502 0
data remove storage clay_502:storage match.display.list[]
data modify storage clay_502:storage match.display.list append from storage clay_502:storage match.playing[{tag:{type:0b,join:1b}}]
data modify storage clay_502:storage match.display.return set value 5001

execute unless data storage clay_502:storage match.display.list[0] run function clay_502:hologram/menu/match/empty
execute if data storage clay_502:storage match.display.list[0] run function clay_502:hologram/menu/match/display