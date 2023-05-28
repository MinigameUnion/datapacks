setblock 6058 81 13 minecraft:air
execute as @a[gamemode=!spectator,x=6016,y=0,z=16,dx=32,dy=255,dz=32] run tag @a[tag=in_602] add join_team_602
execute as @a[sort=random,limit=1,tag=join_team_602] run function ats_602:mem/join

execute if entity @a[tag=join_game_602] run function ats_602:mem/0
execute unless entity @a[tag=join_game_602] run function ats_602:mem/1
tag @a[tag=join_team_602] remove join_team_602