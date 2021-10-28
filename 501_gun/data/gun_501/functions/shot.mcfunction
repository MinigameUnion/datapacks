summon marker ~ ~ ~ {Tags:["bullet_501","setting_501"]}
execute as @e[tag=bullet_501,tag=setting_501,distance=..1,limit=1,sort=nearest] at @s run function bullet_501:shot
scoreboard players remove #AMOUNT num_501 1
execute if score #AMOUNT num_501 matches 1.. run function gun_501:shot