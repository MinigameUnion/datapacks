execute if entity @e[limit=1,tag=hit_partner_602,tag=mule_602,scores={z1_602=0}] run function ats_602:unit/type/mule/partner
execute if entity @e[limit=1,tag=hit_partner_602,tag=dolphin_602,scores={z1_602=0}] run function ats_602:unit/type/dolphin/partner
execute if entity @e[limit=1,tag=hit_partner_602,tag=mooshroom_602] run function ats_602:unit/type/mooshroom/partner
execute if entity @e[limit=1,tag=hit_partner_602,tag=ocelot_602,tag=stop_602] run function ats_602:unit/type/ocelot/partner

execute if entity @e[limit=1,tag=hit_partner_602,tag=parrot_602,scores={z1_602=0}] if score @e[limit=1,tag=hit_partner_602] mulScore2_602 < @s mulScore2_602 run function ats_602:unit/type/parrot/partner
