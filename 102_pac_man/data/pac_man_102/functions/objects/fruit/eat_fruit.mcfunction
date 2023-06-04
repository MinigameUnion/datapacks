#> pac_man_102:objects/fruit/eat_fruit
### フルーツを食べた時

#info
# as :player(score{Game_102=20})
# at :@e[tag=PacMan_102,type=item_display]
# if :@e[tag=Fruit_102,dx=0,dy=-0.5,dz=0.1]

#得点の追加
execute store result score #fruit_102 _Point_102 run data get storage pac_man_102 Patterns[0].Fruit[1]
scoreboard players operation @s _Point_102 += #fruit_102 _Point_102

#得点の表示
loot replace block 1001 89 1001 container.0 loot pac_man_102:fruit/point
summon text_display ~ ~1 ~ {Tags:[Entity_102,Point_Display_102],text:'{"score": {"name":"#fruit_102","objective": "_Point_102"},"bold":true}',billboard:"center",background:0,transformation:[5f,0f,0f,0f, 0f,5f,0f,0f, 0f,0f,5f,0f, 0f,0f,0f,1f]}

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 0.1

#エサの削除
kill @e[tag=Fruit_102,type=item_display,dx=0,dy=-0.5,dz=0.1,limit=1]