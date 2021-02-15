forceload add ~ ~ ~1 ~
forceload remove ~ ~ ~1 ~
setblock ~ ~ ~ minecraft:structure_block{mode: "LOAD",showboundingbox:0b,name:"clay_502:stage/tutorial/0"} replace
setblock ~ ~1 ~ redstone_block
setblock ~32 ~ ~ minecraft:structure_block{mode: "LOAD",showboundingbox:0b,name:"clay_502:stage/tutorial/1"} replace
setblock ~32 ~1 ~ redstone_block

scoreboard players operation @e[dx=47,dy=31,dz=31,tag=creating_502] match_id_502 = #CREATING match_id_502
execute as @e[dx=47,dy=31,dz=31,tag=creating_502,tag=gun_stand_502] run loot replace entity @s armor.head loot clay_502:s1897

data remove storage clay_502:storage match.player[]
execute as @a[scores={playing_000=502},tag=creating_502,limit=1] run function clay_502:game/tutorial/player

data modify entity @s ArmorItems[0].tag.match.tag set from storage clay_502:storage match.games[0].tag

data modify entity @s ArmorItems[0].tag.match.tag.player set from storage clay_502:storage match.player