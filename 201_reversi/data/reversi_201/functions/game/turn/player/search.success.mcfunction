#> reversi_201:game/turn/player/search.success
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/turn/player/search.recursive.run

summon slime ~22064 28 ~ {Silent:1b,Tags:[NoVisible_201,CursorEntity_201,Entity_201],Size:1,NoAI:1b,Team:NoCollision_201,ActiveEffects:[{Id:14,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:19999980,ShowParticles:0b}],PersistenceRequired:1b}
execute unless score $sheep ReversiData_201 matches 1 if score #TurnColor ReversiData_201 matches 0 run summon item ~22064 29 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:black_concrete,Count:1b,tag:{CustomModelData:0}},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
execute unless score $sheep ReversiData_201 matches 1 if score #TurnColor ReversiData_201 matches 1 run summon item ~22064 29 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:white_concrete,Count:1b,tag:{CustomModelData:0}},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
execute unless score $sheep ReversiData_201 matches 1 positioned ~22064 ~ ~ store result entity @e[type=item,tag=SelectItem_201,distance=..0.05,y=29,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201
execute if score $sheep ReversiData_201 matches 1 if score #TurnColor ReversiData_201 matches 0 run summon item ~22064 29 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:endermite_spawn_egg,Count:1b,tag:{CustomModelData:0}},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
execute if score $sheep ReversiData_201 matches 1 if score #TurnColor ReversiData_201 matches 1 run summon item ~22064 29 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:sheep_spawn_egg,Count:1b,tag:{CustomModelData:0}},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
tag @s remove isSuccess_201