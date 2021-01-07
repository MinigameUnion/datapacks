#フルーツを食べた時

#info
# as :player(score{Game_102=20})
# at :@e[tag=PacMan_102]
# if :@e[tag=Fruit_102,dx=0,dy=-0.5,dz=0.1]

#得点の追加
execute store result score #fruit_102 _Point_102 run data get storage pac_man_102 Patterns[0].Fruit[1]
scoreboard players operation @s _Point_102 += #fruit_102 _Point_102

#得点の表示
loot replace block 1001 89 1001 container.0 loot pac_man_102:fruit/point
execute as @a[tag=Playing_102] anchored eyes at @s facing entity @e[tag=PacMan_base_102,limit=1] feet positioned ^ ^ ^5 run summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Age: -2147483648, Duration: 30, WaitTime: -2147483648, Tags: [Entity_102,Point_Display_Fruit_102],CustomNameVisible:1b,CustomName:"{\"text\":\"null\"}"}
data modify entity @e[tag=Point_Display_Fruit_102,limit=1] CustomName set from block 1001 89 1001 Items[0].tag.display.Name

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 0.1

#エサの削除
kill @e[tag=Fruit_102,dx=0,dy=-0.5,dz=0.1,limit=1]