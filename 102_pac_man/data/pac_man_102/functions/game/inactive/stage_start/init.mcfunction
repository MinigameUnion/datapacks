#> pac_man_102:game/inactive/stage_start/init
### ステージ開始 初期設定

#info
# as,at:player

## ステージ開始へ移行
scoreboard players set @s _Game_102 13
scoreboard players set @s _Timer_102 70

## ボスバーの表示削除
    bossbar remove pac_man_102:pre_start
    bossbar remove pac_man_102:continue

## 設置
    function pac_man_102:objects/dots/set
    function pac_man_102:mobs/pacman/set
    function pac_man_102:mobs/ghost/set