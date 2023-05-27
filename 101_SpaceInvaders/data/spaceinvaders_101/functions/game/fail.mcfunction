#> spaceinvaders_101:game/fail
### ゲームオーバー演出移行

## スコアの設定
    scoreboard players set @s Progress_101 5
    scoreboard players set @s Timer_101 -1

## エンティティの削除
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] if score @s[tag=!StagePoint_101] Id_101 = #_id Id_101 run kill @s