#> ms_801:login/root
# プレイヤーのlogin時に実行
# 実行者はそのプレイヤー
# @internal

# このゲームをプレイ中の場合の処理
execute if score @s playing_000 matches 801 run function ms_801:login/this
