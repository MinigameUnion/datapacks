execute if score @s e_602 matches 1.. run tag @s add hit_602

#execute if score @s e_602 matches 1.. run say 1
#execute if score @s e_602 matches 2.. run say 2
#execute if entity @s[tag=hit_602] run say HIT
#execute if entity @e[tag=crowding_602] run say CROWDING

execute if entity @s[tag=hit_602,tag=!crowding_602] run function ats_602:unit/hit/generic
execute if entity @s[tag=crowding_602] run function ats_602:unit/hit/crowding
