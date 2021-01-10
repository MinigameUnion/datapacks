summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","egg_602","other_602"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:egg"}]}
function ats_602:tile/am/chicken
execute as @a[team=602] positioned as @s run playsound minecraft:entity.item.pickup neutral @s ~ ~ ~ 1.0 1.0 0.0
scoreboard players set @s z1_602 0