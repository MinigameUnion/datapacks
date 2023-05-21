#> ms_801:game/succeeded/open_effect
# クリア時地雷オープンの演出
# 地雷が埋まっていた羊が実行者/実行点
# @internal

data merge entity @s {CustomName:'"jeb_"',Sheared:0b}
particle minecraft:note ~ ~0.5 ~ 0.4 0.4 0.4 1 10 force @a[scores={playing_000=801}]
scoreboard players set #RANGE num_000 3
function tool_000:random
execute if score #RANDOM num_000 matches 0 run playsound minecraft:block.note_block.bell master @a[scores={playing_000=801}] ~ ~ ~ 1 0.79 1
execute if score #RANDOM num_000 matches 1 run playsound minecraft:block.note_block.bell master @a[scores={playing_000=801}] ~ ~ ~ 1 1.00 1
execute if score #RANDOM num_000 matches 2 run playsound minecraft:block.note_block.bell master @a[scores={playing_000=801}] ~ ~ ~ 1 1.26 1
tag @s add Opened_801