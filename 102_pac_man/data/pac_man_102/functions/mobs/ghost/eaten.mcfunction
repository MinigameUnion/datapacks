#> pac_man_102:mobs/ghost/eaten
### イジケが食べられたとき

#info
# as,at: @e[tag=PacMan_102,type=item_display]
# #stop_102 _Timer_102=0のとき
# _State_102_=3のゴーストが同じマスにいるとき

#ゴーストのモード変化
scoreboard players set @e[tag=Ghost_base_102,type=item_display,scores={_State_102=3},limit=1,sort=nearest] _State_102 4
execute align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
scoreboard players set @s _Operation_102 0

#得点
    #計算
    scoreboard players operation #izike_102 _Point_102 += #izike_102 _Point_102
    #加算
    scoreboard players operation @a[tag=Playing_102] _Point_102 += #izike_102 _Point_102
    #表示
    summon text_display ~ ~1 ~ {Tags:[Entity_102,Point_Display_102],text:'{"score": {"name":"#izike_102","objective": "_Point_102"},"bold":true}',billboard:"center",background:0,transformation:[5f,0f,0f,0f, 0f,5f,0f,0f, 0f,0f,5f,0f, 0f,0f,0f,1f]}

#ヒットストップ設定
scoreboard players set #stop_102 _Timer_102 30

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 2 1.8
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:entity.evoker_fangs.attack voice @s ~ ~ ~ 2 0.8