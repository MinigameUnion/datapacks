kill @e[tag=tile_602]

setblock 6061 81 13 minecraft:lever[face=wall,facing=north]
setblock 6060 81 13 minecraft:lever[face=wall,facing=north]
setblock 6058 81 13 minecraft:dark_oak_button[face=wall,facing=north] keep
fill 6030 80 15 6033 80 15 minecraft:air
fill 6029 81 15 6034 82 15 minecraft:air
fill 6016 64 16 6047 66 47 minecraft:air replace minecraft:redstone_block
fill 6016 63 16 6047 63 47 minecraft:grass_block
execute if score $602 chaos_602 matches 1 run setblock 6059 81 13 minecraft:lever[face=wall,facing=north]

execute if score $602 gamemode_602 matches 1 run scoreboard players operation @a[team=602] add_coin_000 += $602 score_602
execute if score $602 gamemode_602 matches 2 run scoreboard players operation @a[team=602] add_coin_000 += $602 score_602
execute if score $602 gamemode_602 matches 2 run scoreboard players operation @a[team=602] add_coin_000 /= $50_602 score_602
execute if score $602 gamemode_602 matches 3 run scoreboard players operation @a[team=602] add_coin_000 += $602 score_602
execute if score $602 gamemode_602 matches 3 run scoreboard players operation @a[team=602] add_coin_000 /= $600_602 score_602

bossbar set 0_602 players
bossbar set 0_602 visible false
scoreboard players reset @a[team=602] pId_602
tag @a[team=602] remove shooter_602
clear @a[team=602] minecraft:slime_ball{item602:1b}
team remove 602
scoreboard players reset $602 gamemode_602
scoreboard players reset $602 a_602
scoreboard players reset $602 a1_602
scoreboard players reset $gen602 a_602
scoreboard players reset $gen602 a1_602
scoreboard players set $602 pId_602 0
scoreboard players set $602 e_602 0
scoreboard players set $602 e1_602 0
scoreboard players set $602 score_602 0
scoreboard players set $0_602 score_602 0
scoreboard players set $0_602 a_602 2
scoreboard players set $602 score0_602 10

scoreboard players set $50_602 score_602 50
scoreboard players set $600_602 score_602 600

scoreboard players set $602 vs_602 0

scoreboard players reset $Ope_A_602
scoreboard players reset $Ope_B_602
scoreboard players reset $Ope_C_602

data modify storage ats_602:unit List set value []
data modify storage ats_602:unit Post set value []
data modify storage ats_602:unit Queue set value []

data modify storage ats_602:error Type set value {}
data remove storage ats_602:error Trigger