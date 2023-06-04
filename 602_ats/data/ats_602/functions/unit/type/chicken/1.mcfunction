summon minecraft:item_display ~ ~ ~ {Tags:["tile_602","egg_602","other_602"],item:{id:"minecraft:egg",Count:1b}}
function ats_602:unit/am/chicken
playsound minecraft:entity.item.pickup neutral @s[tag=in_602] ~ ~ ~ 1.0 1.0 0.0
scoreboard players set @s z1_602 0