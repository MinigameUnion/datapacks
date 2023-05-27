setblock 6058 81 13 minecraft:air
execute as @a[team=!602,x=6016,y=0,z=16,dx=32,dy=255,dz=32] run function ats_602:mem/0
execute as @a[sort=random,limit=1,team=602] run function ats_602:mem/1

execute if entity @a[team=602] run function ats_602:mem/2
scoreboard players set $602 a_602 2

execute unless entity @a[team=602] run function ats_602:mem/3