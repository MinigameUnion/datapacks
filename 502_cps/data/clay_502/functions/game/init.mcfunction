#> clay_502:game/init
# @within
#   function clay_502:game/start
execute store result score @s match_id_502 store result score #CREATING match_id_502 run data get storage clay_502:storage match.list[0].Slot
execute store result score #POS[2] num_502 run scoreboard players operation #POS[0] num_502 = #CREATING match_id_502
scoreboard players operation #POS[0] num_502 *= #SPACE[0] num_502
scoreboard players operation #POS[2] num_502 *= #SPACE[2] num_502
execute store result entity @s Pos[0] double 1 run scoreboard players operation #POS[0] num_502 += #START_POS[0] num_502
execute store result entity @s Pos[2] double 1 run scoreboard players operation #POS[2] num_502 += #START_POS[2] num_502

scoreboard players set @s progress_502 0
scoreboard players operation @s type_502 = #GAME num_502

data modify entity @s ArmorItems[0].tag.match set from storage clay_502:storage match.list[0]
data remove storage clay_502:storage match.list[0]
data modify block 4992 0 2000 Items set from storage clay_502:storage match.playing

execute as @a[tag=creating_502,predicate=clay_502:game/player/joinable] run function clay_502:game/player/init

execute at @s run forceload add ~ ~ ~32 ~16
execute if score #GAME num_502 matches 0 at @s run function clay_502:game/tutorial/init
execute if score #GAME num_502 matches 1 at @s run function clay_502:game/default/init
execute if score #GAME num_502 matches 2 at @s run function clay_502:game/quickshot/init
#execute if score #GAME num_502 matches 3 at @s run function clay_502:game/challenge/init
data modify storage clay_502:storage match.playing set from block 4992 0 2000 Items