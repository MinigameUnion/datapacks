scoreboard players operation @s[tag=!time_bar_502] exp_max_000 = @s tick_502
tag @s add time_bar_502
scoreboard players operation @s exp_num_000 = @s tick_502
scoreboard players operation @s level_000 = @s tick_502
scoreboard players operation @s level_000 += #19 num_000
scoreboard players operation @s level_000 /= #20 num_000
scoreboard players set @s[scores={tick_502=..1}] level_000 0

function player_000:experience/set

tag @s[scores={tick_502=..1}] remove time_bar_502