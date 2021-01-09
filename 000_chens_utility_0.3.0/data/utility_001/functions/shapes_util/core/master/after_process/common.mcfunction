#> utility_001:shapes_util/core/master/after_process/common
# @internal

scoreboard players set #summon-count utility_001 0
scoreboard players add #LatestRunID shape_run_id_001 1
execute as @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001] run scoreboard players operation @s shape_run_id_001 = #LatestRunID shape_run_id_001
tag @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001] remove shape_unfinished_001