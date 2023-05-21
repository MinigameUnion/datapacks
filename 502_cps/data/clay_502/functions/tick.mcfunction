execute positioned 5015.5 1.0 2031.5 run tag @a[distance=..10,scores={playing_000=502}] add hologram_operator_001
execute as @e[type=item,tag=clay_502,nbt={OnGround:1b}] at @s run function clay_502:clay/delete
tag @e[tag=target_plate_502,tag=hit_502,tag=ticking_502] remove target_501

execute as @e[tag=match_admin_502] at @s run function clay_502:game/tick