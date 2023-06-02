scoreboard players operation @s a_602 = @s a2_602
execute if entity @s[scores={a1_602=1..}] run scoreboard players remove @s a1_602 1
execute if entity @s[scores={a1_602=1..}] run tag @s remove stop_602
execute if entity @s[scores={a_602=7..,a1_602=241..280}] run scoreboard players set @s a_602 6
execute if entity @s[scores={a_602=6..,a1_602=181..240}] run scoreboard players set @s a_602 5
execute if entity @s[scores={a_602=5..,a1_602=141..180}] run scoreboard players set @s a_602 4
execute if entity @s[scores={a_602=4..,a1_602=101..140}] run scoreboard players set @s a_602 3
execute if entity @s[scores={a_602=3..,a1_602=61..100}] run scoreboard players set @s a_602 2
execute if entity @s[scores={a_602=2..,a1_602=1..60}] run scoreboard players set @s a_602 1
execute if entity @s[scores={a1_602=..0}] run tag @s add stop_602

execute if entity @s[scores={a_602=1..,a1_602=..0}] run scoreboard players set @s a_602 0

execute if score @s score_602 > $0_602 score_602 run scoreboard players operation $0_602 score_602 = @s score_602
