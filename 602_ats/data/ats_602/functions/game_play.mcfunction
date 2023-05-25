function ats_602:m/main

#data
function ats_602:storage/unit/starter
tellraw @a [{"text":"FIRST_DATA_ID : "},{"nbt":"List[-1].ID","storage": "ats_602:unit"}]
tellraw @a [{"text":"POS : "},{"nbt":"List[-1].Pos","storage": "ats_602:unit"}]
tellraw @a [{"text":"HIT : "},{"nbt":"List[-1].Hit","storage": "ats_602:unit"}]

execute unless score $602 a_602 matches 5 as @e[tag=tile_602] run function ats_602:unit/main
execute if score $602 a_602 matches 5 as @e[tag=tile_602] run function ats_602:unit/result
execute as @a[tag=in_602] run function ats_602:p/play

execute unless score $602 addScore_602 = $602 score_602 run function ats_602:bar/0
execute if score $602 gamemode_602 matches 2..3 if score $602 a_602 matches 3.. positioned as @e[tag=tile_602] if score $0_602 score_602 = @e[sort=nearest,limit=1,tag=tile_602,distance=..1] score_602 run particle minecraft:dust 1 0 1 1.3 ~ ~2 ~ 0 0 0 0 1 force

scoreboard players set $Ope_A_602 e_602 0
function ats_602:storage/unit/pre
execute if score $602 a_602 matches 3..4 if score $602 e_602 matches ..0 run function ats_602:result/t

#tellraw @a [{"text":"debug_command_counts : "},{"score":{"name": "$test_602","objective": "a_602"}}]