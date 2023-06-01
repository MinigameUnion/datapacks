execute if entity @s[tag=hit_self_602] run function ats_602:unit/hit/self
execute if entity @s[tag=hit_partner_602] run function ats_602:unit/hit/generic
execute if entity @s[tag=crowding_602] run function ats_602:unit/hit/crowding

execute if entity @s[tag=hit_602,tag=bee_602] run function ats_602:unit/type/bee/hit