#残機の増加

#info
# as,at: info

#タイマーの進行
scoreboard players remove #health_add_102 _Timer_102 1

#残機の増加
execute if score #health_add_102 _Timer_102 matches 29 run scoreboard players add @s _HP_102 1
#表示の変更
execute if score #health_add_102 _Timer_102 matches 29 as @e[tag=PacMan_HP_102,type=item_display] run function pac_man_102:objects/hp/update

#サウンド
execute if score #health_add_102 _Timer_102 matches 29 run playsound minecraft:entity.player.levelup voice @a[scores={playing_000=102}] ~ ~ ~ 2 2

execute if score #health_add_102 _Timer_102 matches 25 run playsound minecraft:block.note_block.harp voice @a[scores={playing_000=102}] ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 20 run playsound minecraft:block.note_block.harp voice @a[scores={playing_000=102}] ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 15 run playsound minecraft:block.note_block.harp voice @a[scores={playing_000=102}] ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 10 run playsound minecraft:block.note_block.harp voice @a[scores={playing_000=102}] ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 5 run playsound minecraft:block.note_block.harp voice @a[scores={playing_000=102}] ~ ~ ~ 2 0.4