data modify entity @s {} merge from storage clay_502:storage lobby.return
execute at @s as @a[tag=ticking_502] run function clay_502:player/finish

#X,Z
fill ~ ~ ~ ~15 ~31 ~15 air
#X,Z+1
fill ~ ~ ~16 ~15 ~31 ~31 air
#X+1,Z
fill ~16 ~ ~ ~31 ~31 ~15 air
#X+1,Z+1
fill ~16 ~ ~16 ~31 ~31 ~31 air
#X+2,Z
fill ~32 ~ ~ ~47 ~31 ~15 air
#X+2,Z+1
fill ~32 ~ ~16 ~47 ~31 ~31 air


execute as @e[type=pig,dx=47,dy=31,dz=31,tag=ticking_502] run data modify entity @s Saddle set value 0b
kill @e[type=!player,dx=47,dy=31,dz=31,tag=ticking_502]

data remove entity @s ArmorItems[0].tag.match.tag
data modify block 4992 0 2000 Items set from storage clay_502:storage match.list
data modify block 4992 0 2000 Items append from entity @s ArmorItems[0].tag.match
data modify storage clay_502:storage match.list set from block 4992 0 2000 Items
data modify block 4992 0 2000 Items set from storage clay_502:storage match.playing
data modify entity @s ArmorItems[0].tag.match.id set value "minecraft:redstone_block"
data modify block 4992 0 2000 Items append from entity @s ArmorItems[0].tag.match
data modify storage clay_502:storage match.playing set from block 4992 0 2000 Items
data remove storage clay_502:storage match.playing[{id:"minecraft:redstone_block"}]

kill @s