function ats_602:m/0
execute as @e[tag=tile_602,tag=mule_602] run function ats_602:tile/type/mule/1
execute if score $602 gamemode_602 matches 1 run function ats_602:m/1/0
execute unless score $602 e_602 matches ..0 run function ats_602:g/main
#execute unless score $602 e_602 matches ..0 if score $602 gamemode_602 matches 1 as @a if score @s pId_602 = $602 pId_602 run function ats_602:m/1/g
#execute unless score $602 e_602 matches ..0 if score $602 gamemode_602 matches 2 as @a if score @s pId_602 = $602 pId_602 run function ats_602:m/2/g
#execute unless score $602 e_602 matches ..0 if score $602 gamemode_602 matches 3 as @a if score @s pId_602 = $602 pId_602 run function ats_602:m/3/g
