#> utility_001:shapes_util/core/master/rotate/direction
# @internal

summon minecraft:area_effect_cloud ^ ^ ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[shape_temp_001]}
execute as @e[type=area_effect_cloud,tag=shape_temp_001,limit=1] at @s run function utility_001:shapes_util/core/master/rotate/run
execute at @s facing entity @e[type=area_effect_cloud,tag=shape_temp_001,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @e[type=area_effect_cloud,tag=shape_temp_001,limit=1]