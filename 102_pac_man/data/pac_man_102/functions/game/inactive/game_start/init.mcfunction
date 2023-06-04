#> pac_man_102:game/inactive/game_start/init
### ゲーム開始 初期設定

#info
# as,at: player

##ゲーム開始へ移行
    scoreboard players set @s _Game_102 12
    scoreboard players set @s _Timer_102 110

## スコアの設定
    scoreboard players set @s _Point_102 0
    tag @s add Playing_102
    scoreboard players set #health_add_102 _Timer_102 31
    scoreboard players set @s _HP_102 3

## アイテムの処理
    clear @s apple{PreStart:1b}

## オブジェクト設置
    # エサ設置
    function pac_man_102:objects/dots/set
    # 残機設置
    function pac_man_102:objects/hp/set
    # 得点
    kill @e[tag=Point_102,type=text_display]
    summon text_display 1014.5 93.00 1004.5 {Tags:[Entity_102,Point_102],text:'{"translate":"               \\n%s","bold":true,"with":[{"score":{"name":"@a[tag=Playing_102,limit=1]","objective":"_Point_102"}}]}',see_through:true,background:0,alignment:"right",Rotation:[90f,-70f],transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,0.12f]}
    # 表示
    kill @e[tag=Display_102,type=text_display]
    summon text_display 1002.5 95 1001.0 {Tags:[Entity_102,Display_102],Rotation:[90f,-90f],background:0,transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,0.12f]}

## パターンのセット
    function pac_man_102:set_pattern

## プレイヤーの移動
    tp @s 994.41 110.13 1001.0 -90 90

## 演出のリセット
    bossbar set pac_man_102:pre_start players
    title @a[scores={playing_000=102}] actionbar {"text":""}