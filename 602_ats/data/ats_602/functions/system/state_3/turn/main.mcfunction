function ats_602:system/state_3/turn/0
execute as @e[tag=tile_602,tag=mule_602] run function ats_602:tile/type/mule/1
execute if score $602 gamemode_602 matches 1 run function ats_602:system/g3/grass_fill
execute if score $602 e_602 matches 1.. run function ats_602:item/give/main
