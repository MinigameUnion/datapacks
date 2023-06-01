tellraw @s {"text":"ゲームのラストターン及びユニットの発射上限に達しました、これ以上発射できません。ぜひ見守りください。","color":"yellow"}
execute positioned as @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.6 1.0 0
scoreboard players reset @s sneak_602