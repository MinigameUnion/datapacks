scoreboard players operation @s match_id_502 = #CREATING match_id_502
scoreboard players operation @s type_502 = #GAME num_502
tp @s @e[dx=47,dy=31,dz=31,tag=creating_502,tag=spawn_player_502,sort=nearest,limit=1]
function gun_501:join
tag @s add playing_502
tag @s remove creating_502

execute at @s run playsound block.wooden_door.open block @s ~ ~ ~ 1 1 0
effect give @s blindness 2 1 true
effect give @s slowness 1 127 true
clear @s
gamemode adventure @s
experience set @s 0 levels
experience set @s 0 points

scoreboard players operation #ID num_502 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0.5,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name

advancement revoke @s only clay_502:picked_gun