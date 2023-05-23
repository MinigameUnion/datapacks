#> clay_502:game/create
# @within
#   function clay_502:game/tick/creating

scoreboard players operation #CREATING match_id_502 = @s match_id_502
scoreboard players operation #GAME num_502 = @s type_502
data modify block 4992 0 2000 Items set from storage clay_502:storage match.playing

execute if score #GAME num_502 matches 0 run function clay_502:game/tutorial/create
execute if score #GAME num_502 matches 1 run function clay_502:game/default/create
execute if score #GAME num_502 matches 2 run function clay_502:game/quickshot/create

function clay_502:game/sign/delete_match/create

data modify block 4992 0 2000 Items append from entity @s ArmorItems[0].tag.match
data modify storage clay_502:storage match.playing set from block 4992 0 2000 Items

tag @s remove creating_502
tag @e[dx=47,dy=31,dz=31,tag=creating_502] remove creating_502
tag @a[tag=creating_502,predicate=clay_502:game/player/match] remove creating_502