execute if entity @a[tag=ticking_502,tag=playing_502,scores={hit_502=..4}] as @e[type=armor_stand,tag=ticking_502,tag=clay_shooter_502,sort=random,limit=1] at @s run function clay_502:clay/shoot

scoreboard players operation #RANGE num_000 = #SECOND_RANDOM num_502
function tool_000:random
execute store result score @s tick_502 run scoreboard players operation #RANDOM num_000 += #SECOND_OPTION num_502
scoreboard players operation @s tick_502 *= #20 num_000

#scoreboard players remove @s count_502 1
execute unless entity @a[tag=ticking_502,tag=playing_502,scores={hit_502=..4}] run scoreboard players set @s progress_502 5
execute unless entity @a[tag=ticking_502,tag=playing_502,scores={hit_502=..4}] run scoreboard players set @s tick_502 40