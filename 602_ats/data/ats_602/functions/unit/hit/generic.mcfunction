execute unless score $602 gamemode_602 matches 1 run function ats_602:unit/hit/score

execute unless score $602 c_602 matches -2147483648..2147483647 run scoreboard players operation $602 c_602 = @s b_602
execute unless score $602 d_602 matches -2147483648..2147483647 run scoreboard players operation $602 d_602 = @s a1_602

tag @s remove c_execute_602

execute as @e[limit=1,tag=c_execute_602] run function ats_602:unit/main

scoreboard players operation $602 c_602 >< @s b_602
scoreboard players operation $602 d_602 >< @s a1_602
