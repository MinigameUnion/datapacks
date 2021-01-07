#cm

#info
# as,at:free
# loop

#タイマー
execute if score #cm_timer_102 _Timer_102 matches 125.. run scoreboard players set #cm_timer_102 _Timer_102 0

#音源
execute as @a[scores={playing_000=102}] at @s run function pac_man_102:sound/cm/music

#ループ
scoreboard players add #cm_timer_102 _Timer_102 1
execute if score #cm_timer_102 _Timer_102 matches ..124 run schedule function pac_man_102:sound/cm/loop 1t