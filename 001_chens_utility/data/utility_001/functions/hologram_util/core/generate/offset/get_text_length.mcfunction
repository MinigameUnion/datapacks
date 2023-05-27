#> utility_001:hologram_util/core/generate/offset/get_text_length
# @within function utility_001:hologram_util/core/generate/offset/x

execute store result score $TextLength utility_001 if data storage utility_001:hologram_util TextGroup[-1].Text[]
execute store result score $TextSpaceWidth utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth 10000
scoreboard players remove $TextLength utility_001 1
scoreboard players operation $TextLength utility_001 *= $TextSpaceWidth utility_001
scoreboard players reset $TextSpaceWidth utility_001