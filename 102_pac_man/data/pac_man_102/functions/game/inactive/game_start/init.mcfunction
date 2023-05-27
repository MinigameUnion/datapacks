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
    function pac_man_102:objects/point/set

## パターンのセット
    function pac_man_102:set_pattern

## プレイヤーの移動
    tp @s 994.41 110.13 1001.0 -90 90

## 演出のリセット
    bossbar set pac_man_102:pre_start players
    title @a[scores={playing_000=102}] actionbar {"text":""}