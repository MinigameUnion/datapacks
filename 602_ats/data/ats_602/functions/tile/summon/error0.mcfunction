tellraw @s {"text":"透明なガラスの上で使用してください！","color":"red"}
execute positioned as @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1 0
scoreboard players reset @s sneak_602