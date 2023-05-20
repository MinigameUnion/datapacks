#> clay_502:game/default/create
# @within
#   function clay_502:game/create

scoreboard players operation @e[dx=47,dy=31,dz=31,tag=creating_502] match_id_502 = #CREATING match_id_502
execute as @e[dx=47,dy=31,dz=31,tag=creating_502,tag=gun_stand_502] run loot replace entity @s armor.head loot clay_502:s1897

data remove storage clay_502:storage match.player[]
execute as @a[scores={playing_000=502},tag=creating_502,predicate=clay_502:game/player/match,limit=1] run function clay_502:game/default/player

data modify entity @s ArmorItems[0].tag.match.tag set from storage clay_502:storage match.games[1].tag

data modify entity @s ArmorItems[0].tag.match.tag.player set from storage clay_502:storage match.player