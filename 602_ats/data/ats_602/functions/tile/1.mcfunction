execute positioned as @e[tag=tile_602,tag=!stop_602,distance=..1.3] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 run scoreboard players add @s e_602 1

execute if entity @s[scores={e_602=0}] run function ats_602:tile/1_1
scoreboard players set @s e_602 0
