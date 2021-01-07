#イントロ

#info
# as,at:armor_stand(Tags{Center_102})
# loop

#タイマー
execute if score #intro_timer_102 _Timer_102 matches 100.. run scoreboard players set #intro_timer_102 _Timer_102 0

#音源
execute as @a[scores={playing_000=102}] at @s run function pac_man_102:sound/intro/music

#ループ
scoreboard players add #intro_timer_102 _Timer_102 1
execute if score #intro_timer_102 _Timer_102 matches ..99 run schedule function pac_man_102:sound/intro/loop 1t