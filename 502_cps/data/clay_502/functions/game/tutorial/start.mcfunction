kill @e[dx=47,dy=31,dz=31,tag=gun_stand_502,tag=ticking_502]

execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1

tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " ✓ ","color":"green","underlined": false,"bold": true},{"text": "銃を拾う : ","color":"gray","underlined": false},{"keybind": "key.use","color":"white","underlined": true}]

loot give @a[advancements={clay_502:picked_gun=false},tag=ticking_502] loot clay_502:s1897

scoreboard players set @a[tag=ticking_502] hit_502 0

tag @e[dx=47,dy=31,dz=31,tag=ticking_502,tag=sign_502,tag=leave_match_502] add disabled_502
function clay_502:game/sign/leave_match/restore

data modify entity @s ArmorItems[0].tag.match.tag.join set value 0b
data modify block 4992 0 2000 Items set from storage clay_502:storage match.playing
data modify block 4992 0 2000 Items append from entity @s ArmorItems[0].tag.match
data modify storage clay_502:storage match.playing set from block 4992 0 2000 Items

scoreboard players set @s progress_502 1