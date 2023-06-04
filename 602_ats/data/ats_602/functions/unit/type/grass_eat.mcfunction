setblock ~ 63 ~ minecraft:coarse_dirt
scoreboard players add $602 score_602 1
execute if entity @s[tag=cow_602] run function ats_602:unit/type/cow/0ge
execute if entity @s[tag=horse_602,tag=!stop_602,scores={a1_602=..200}] unless entity @s[scores={z1_602=1}] run function ats_602:unit/type/horse/0ge
playsound minecraft:entity.player.burp neutral @a[tag=in_602] ~ ~ ~ 2.0 1.0