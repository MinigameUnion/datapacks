scoreboard players set @s progress_502 6
execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.player.levelup neutral @s ^ ^ ^20 1 2 1
scoreboard players set @a[tag=ticking_502,scores={tick_502=1..}] tick_502 1
scoreboard players set @s tick_502 40

tag @a[tag=ticking_502,tag=restart_502] remove restart_502