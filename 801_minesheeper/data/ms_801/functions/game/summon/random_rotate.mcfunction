#> ms_801:game/summon/random_rotate
# 羊をランダムに回転
# @internal

scoreboard players set #RANGE num_000 360
function tool_000:random
execute store result entity @s Rotation[0] float 1.0 run scoreboard players get #RANDOM num_000