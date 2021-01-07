#イジケが食べられたとき

#info
# as,at: @e[tag=PacMan_102]
# #stop_102 _Timer_102=0のとき
# _State_102_=3のゴーストが同じマスにいるとき

#ゴーストのモード変化
scoreboard players set @e[tag=Ghost_base_102,scores={_State_102=3},limit=1,sort=nearest] _State_102 4
execute align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
scoreboard players set @s _Operation_102 0

#得点
    #計算
    scoreboard players operation #izike_102 _Point_102 += #izike_102 _Point_102
    #加算
    scoreboard players operation @a[tag=Playing_102] _Point_102 += #izike_102 _Point_102
    #表示
    loot replace block 1001 89 1001 container.0 loot pac_man_102:ghost/point
    execute as @a[tag=Playing_102] anchored eyes at @s facing entity @e[tag=PacMan_base_102,limit=1] feet positioned ^ ^ ^5 run summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Age: -2147483648, Duration: 30, WaitTime: -2147483648, Tags: [Entity_102,Point_Display_Izike_102],CustomNameVisible:1b,CustomName:"{\"text\":\"null\"}"}
    data modify entity @e[tag=Point_Display_Izike_102,limit=1] CustomName set from block 1001 89 1001 Items[0].tag.display.Name

#ヒットストップ設定
scoreboard players set #stop_102 _Timer_102 30

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 2 1.8
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:entity.evoker_fangs.attack voice @s ~ ~ ~ 2 0.8