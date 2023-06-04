execute if entity @s[tag=hit_self_602] run function ats_602:unit/hit/self
execute if entity @s[tag=hit_partner_602] run function ats_602:unit/hit/partner
execute if entity @s[tag=crowding_602] run function ats_602:unit/hit/crowding

execute if entity @s[tag=hit_602,tag=bee_602,scores={a1_602=..101}] run function ats_602:unit/type/bee/hit
execute if entity @s[tag=hit_602,tag=polar_bear_602] run function ats_602:unit/type/polar_bear/1