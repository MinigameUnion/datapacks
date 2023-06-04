#ゴーストのサウンド 通常

#info
# as,at: player

#タイマの加算
scoreboard players add #ghost_sound_102 _Timer_102 1
execute if score #ghost_sound_102 _Timer_102 matches 6.. run scoreboard players set #ghost_sound_102 _Timer_102 0

#サウンドの実行
execute if score #ghost_sound_102 _Timer_102 matches 1 run playsound minecraft:block.note_block.xylophone voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.9
execute if score #ghost_sound_102 _Timer_102 matches 2 run playsound minecraft:block.note_block.xylophone voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.96
execute if score #ghost_sound_102 _Timer_102 matches 3 run playsound minecraft:block.note_block.xylophone voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 1.02
execute if score #ghost_sound_102 _Timer_102 matches 4 run playsound minecraft:block.note_block.xylophone voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.96
execute if score #ghost_sound_102 _Timer_102 matches 5 run playsound minecraft:block.note_block.xylophone voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.9