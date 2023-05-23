#> clay_502:game/player/create
# @within
#   function clay_502:game/**/player

tp @s @e[dx=47,dy=31,dz=31,tag=creating_502,tag=spawn_player_502,tag=!spawned_502,sort=random,limit=1]

execute positioned as @s run scoreboard players operation @e[tag=creating_502,tag=spawn_player_502,tag=personal_502,sort=nearest,limit=1,distance=..0.5] num_502 = @s id_000
execute positioned as @s run tag @e[tag=creating_502,tag=spawn_player_502,tag=personal_502,sort=nearest,limit=1,distance=..0.5] add spawned_502

function gun_501:join
tag @s add playing_502
#tag @s remove creating_502

execute at @s run playsound block.wooden_door.open block @s ~ ~ ~ 1 1 0
effect give @s blindness 2 1 true
effect give @s slowness 1 127 true
clear @s
gamemode adventure @s
function player_000:experience/reset

scoreboard players operation #ID num_502 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name

advancement revoke @s only clay_502:picked_gun