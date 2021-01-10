scoreboard players add @s addScore_602 20
execute if entity @s[tag=villager_602] run function ats_602:tile/type/villager/1
execute positioned as @s run particle happy_villager ~ ~ ~ 1 1 1 0 30
execute positioned as @a[team=602] run playsound minecraft:entity.experience_orb.pickup player @a[team=602] ~ ~ ~ 1.0 2.0
tag @s add emerald_602