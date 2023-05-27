#> clay_502:game/quickshot/create
# @within
#   function clay_502:game/create

scoreboard players operation @e[dx=47,dy=31,dz=31,tag=creating_502] match_id_502 = #CREATING match_id_502
execute as @e[dx=47,dy=31,dz=31,tag=creating_502,tag=gun_stand_502] run loot replace entity @s container.0 loot clay_502:game/quickshot/s1897
execute as @e[dx=47,dy=31,dz=31,tag=creating_502,tag=gun_stand_502] run data remove entity @s Item.tag.display.Name

data modify storage clay_502:storage match.player set value []
execute as @a[scores={playing_000=502},tag=creating_502,predicate=clay_502:game/player/match,limit=1] run function clay_502:game/quickshot/player

data modify entity @s ArmorItems[0].tag.match.tag set from storage clay_502:storage match.games[{name:"quickshot"}].tag

data modify entity @s ArmorItems[0].tag.match.tag.player set from storage clay_502:storage match.player