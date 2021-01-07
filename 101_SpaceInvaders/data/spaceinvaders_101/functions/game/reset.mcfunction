###
###リセット
###

##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##スコア
scoreboard players reset @s Progress_101

##移動
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run tp @s ~ ~ ~10

##ステージ
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run fill ~-10 62 -46 ~10 85 -46 air
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run fill ~-2 ~-1 ~-6 ~2 ~-1 ~-6 air

##エンティティ
kill @e[type=!player,tag=!StagePoint_101,scores={Group_101=1}]
scoreboard players reset @e[tag=StagePoint_101,scores={Group_101=1}] Id_101

##そのほか
clear @s carrot_on_a_stick
effect clear @s jump_boost