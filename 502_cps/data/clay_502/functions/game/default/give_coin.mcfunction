scoreboard players operation @a[tag=ticking_502,tag=playing_502] add_coin_000 = @s num_502
execute as @a[tag=ticking_502,tag=playing_502] at @s run function player_000:add_coin

scoreboard players set @s progress_502 5
scoreboard players set @s tick_502 150