summon area_effect_cloud ~ ~ ~ {Tags:["bullet_501","setting_501"],Radius:0.0f,Duration:2147483647}
execute as @e[type=area_effect_cloud,tag=bullet_501,tag=setting_501,distance=..1,limit=1,sort=nearest] at @s run function bullet_501:shot
scoreboard players remove #AMOUNT num_501 1
execute if score #AMOUNT num_501 matches 1.. run function gun_501:shot