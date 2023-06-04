#ゴーストのサウンド 通常

#info
# as,at: player

#タイマの加算
scoreboard players add #ghost_sound_102 _Timer_102 1
execute if score #ghost_sound_102 _Timer_102 matches 9.. run scoreboard players set #ghost_sound_102 _Timer_102 0

#サウンドの実行
execute if score #ghost_sound_102 _Timer_102 matches 1 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.80
execute if score #ghost_sound_102 _Timer_102 matches 2 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.86
execute if score #ghost_sound_102 _Timer_102 matches 3 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.92
execute if score #ghost_sound_102 _Timer_102 matches 4 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.98
execute if score #ghost_sound_102 _Timer_102 matches 5 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.93
execute if score #ghost_sound_102 _Timer_102 matches 6 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.87
execute if score #ghost_sound_102 _Timer_102 matches 7 run playsound minecraft:block.note_block.flute voice @a[scores={playing_000=102}] ~ ~ ~ 0.3 0.81