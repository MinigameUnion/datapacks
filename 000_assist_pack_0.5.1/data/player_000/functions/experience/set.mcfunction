#> player_000:experience/set
# @public

scoreboard players operation #TEMP num_000 = @s exp_num_000
scoreboard players operation #TEMP num_000 < @s exp_max_000
scoreboard players operation #TEMP num_000 *= #183 num_000
scoreboard players operation #TEMP num_000 /= @s exp_max_000

experience set @s 38 levels
execute store result score #EXPBAR num_000 run experience query @s points
scoreboard players operation #TEMP num_000 -= #EXPBAR num_000
execute if score #TEMP num_000 matches 1.. run function player_000:experience/bar_plus
execute if score #TEMP num_000 matches ..-1 run function player_000:experience/bar_minus

scoreboard players operation #TEMP num_000 = @s level_000
scoreboard players remove #TEMP num_000 38
execute if score #TEMP num_000 matches 1.. run function player_000:experience/num_plus
execute if score #TEMP num_000 matches ..-1 run function player_000:experience/num_minus

execute store result score @s XpP_000 run data get entity @s XpP 1000

stopsound @a player minecraft:entity.player.levelup