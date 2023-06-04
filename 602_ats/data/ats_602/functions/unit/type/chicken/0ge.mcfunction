summon minecraft:item_display ~ ~ ~ {item:{Count:1b,id:"minecraft:egg"},Tags:["start_602","hit_602","tile_602","egg_602"]}
function ats_602:unit/am/chicken
playsound minecraft:entity.item.pickup neutral @a[scores={playing_000=602}] ~ ~ ~ 1.0 1.0 0.0
scoreboard players set @s z1_602 1