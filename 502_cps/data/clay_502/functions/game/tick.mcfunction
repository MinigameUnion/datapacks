scoreboard players operation #ADMIN match_id_502 = @s match_id_502
scoreboard players operation #ADMIN type_502 = @s type_502
execute as @e[dx=47,dy=31,dz=31,tag=!match_admin_502] if score @s match_id_502 = #ADMIN match_id_502 run tag @s add ticking_502

execute as @a[scores={playing_000=502},tag=join_spec_502] if score @s match_id_502 = #ADMIN match_id_502 at @e[dx=47,dy=31,dz=31,tag=spawn_spectator_502,tag=ticking_502,sort=random,limit=1] run function clay_502:spectator/join
execute as @a[scores={playing_000=502},tag=join_player_502] if score @s match_id_502 = #ADMIN match_id_502 at @e[dx=47,dy=31,dz=31,tag=spawn_player_502,tag=!spawned_502,tag=ticking_502,sort=random,limit=1] run function clay_502:player/join

execute as @a[tag=ticking_502,tag=delete_match_502,tag=playing_502] run function clay_502:game/sign/delete_match/clicked
execute as @a[tag=ticking_502,tag=leave_match_502] run function clay_502:game/sign/leave_match/clicked

execute if score @s type_502 matches 0 run function clay_502:game/tutorial/tick
execute if score @s type_502 matches 1 run function clay_502:game/default/tick
execute if score @s type_502 matches 2 run function clay_502:game/quickshot/tick
#execute if score @s type_502 matches 3 run function clay_502:game/challenge/tick

execute as @a[tag=ticking_502,scores={tick_502=1..}] at @s run function clay_502:player/time_bar

execute as @e[tag=target_plate_502,tag=!target_501,nbt={PortalCooldown:0},tag=ticking_502] at @s run function clay_502:target_plate/respawn
tag @e[tag=target_plate_502,tag=hit_502,tag=ticking_502] remove target_501

scoreboard players remove @a[tag=ticking_502,scores={tick_502=1..}] tick_502 1
execute if entity @a[tag=playing_502,tag=ticking_502] run scoreboard players remove @s[scores={tick_502=1..}] tick_502 1
tag @e[dx=47,dy=31,dz=31,tag=ticking_502] remove ticking_502