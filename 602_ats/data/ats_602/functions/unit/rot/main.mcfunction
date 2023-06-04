execute if entity @s[scores={c_602=1..}] run playsound minecraft:entity.armor_stand.place neutral @a[team=602] ~ ~ ~ 1.0 1.0 0.1
execute store result score @s b_602 run data get entity @s Rotation[0] 100
scoreboard players reset @s c_602
execute unless block ~ ~ ~0.3 minecraft:air run scoreboard players add @s c_602 1
execute unless block ~ ~ ~-0.3 minecraft:air run scoreboard players add @s c_602 2
execute unless block ~0.3 ~ ~ minecraft:air run scoreboard players add @s c_602 4
execute unless block ~-0.3 ~ ~ minecraft:air run scoreboard players add @s c_602 8

execute if entity @s[scores={c_602=5}] run function ats_602:unit/rot/5
execute if entity @s[scores={c_602=6}] run function ats_602:unit/rot/6
execute if entity @s[scores={c_602=9}] run function ats_602:unit/rot/9
execute if entity @s[scores={c_602=10}] run function ats_602:unit/rot/10
execute if entity @s[scores={c_602=15}] run function ats_602:unit/rot/15
#up
execute if entity @s[scores={c_602=1}] run function ats_602:unit/rot/90
execute if entity @s[scores={c_602=13}] run function ats_602:unit/rot/90
#down
execute if entity @s[scores={c_602=2}] run function ats_602:unit/rot/270
execute if entity @s[scores={c_602=14}] run function ats_602:unit/rot/270
#left
execute if entity @s[scores={c_602=8}] run function ats_602:unit/rot/180
execute if entity @s[scores={c_602=11}] run function ats_602:unit/rot/180
#right
execute if entity @s[scores={c_602=4}] run function ats_602:unit/rot/0
execute if entity @s[scores={c_602=7}] run function ats_602:unit/rot/0

#score
execute if entity @s[tag=silverfish_602] if entity @s[tag=silverfish_effect_602] unless block ^ ^ ^0.9 minecraft:gray_concrete run tag @s remove silverfish_effect_602
execute if entity @s[tag=silverfish_602] unless entity @s[tag=silverfish_effect_602] if block ^ ^ ^0.9 minecraft:gray_concrete run function ats_602:unit/type/silverfish/1

execute unless score $602 gamemode_602 matches 1 if entity @s[scores={c_602=1..}] run tag @s add addScore_602