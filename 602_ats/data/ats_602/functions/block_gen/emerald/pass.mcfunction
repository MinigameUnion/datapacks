scoreboard players add @s addScore_602 20
execute if entity @s[tag=villager_602] run function ats_602:unit/type/villager/1
particle happy_villager ~ ~ ~ 1 1 1 0 30
playsound minecraft:entity.experience_orb.pickup player @a[tag=in_602] ~ ~ ~ 1.0 2.0
tag @s add emerald_602