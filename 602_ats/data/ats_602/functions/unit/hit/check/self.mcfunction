execute if entity @s[tag=mule_602,scores={z1_602=0}] run function ats_602:unit/type/mule/self
execute if entity @s[tag=dolphin_602,scores={z1_602=0}] run function ats_602:unit/type/dolphin/self
execute if entity @s[tag=mooshroom_602] run function ats_602:unit/type/mooshroom/self
execute if entity @s[tag=ocelot_602,tag=stop_602] run function ats_602:unit/type/ocelot/self
execute if entity @s[tag=parrot_602,scores={z1_602=0}] if score @s mulScore1_602 < @e[limit=1,tag=hit_partner_602] mulScore1_602 run function ats_602:unit/type/parrot/self
