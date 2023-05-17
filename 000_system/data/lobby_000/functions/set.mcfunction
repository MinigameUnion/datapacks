#> lobby_000:set
### ロビーのセット

## ロビー
    place template lobby_000:entrance -1 39 33

## ゲーム選択
    # リセット
    kill @e[tag=click_000]
    # ゲーム
    execute positioned 3.5 40 55.5 rotated -90 0 run function lobby_000:objects/101
    execute positioned 3.5 40 52.5 rotated -90 0 run function lobby_000:objects/102
    execute positioned 3.5 40 46.5 rotated -90 0 run function lobby_000:objects/201
    execute positioned 13.5 40 55.5 rotated 90 0 run function lobby_000:objects/401
    execute positioned 13.5 40 52.5 rotated 90 0 run function lobby_000:objects/502
    execute positioned 3.5 40 49.5 rotated -90 0 run function lobby_000:objects/602
    execute positioned 13.5 40 49.5 rotated 90 0 run function lobby_000:objects/801
    # 設置予定(という名の背景)
    execute positioned 3.5 40 43.5 rotated -90 0 run function lobby_000:objects/001
    execute positioned 3.5 40 40.5 rotated -90 0 run function lobby_000:objects/001
    execute positioned 13.5 40 46.5 rotated 90 0 run function lobby_000:objects/001
    execute positioned 13.5 40 43.5 rotated 90 0 run function lobby_000:objects/001
    execute positioned 13.5 40 40.5 rotated 90 0 run function lobby_000:objects/001
    execute positioned 6.5 40 37.5 rotated 0 0 run function lobby_000:objects/001
    execute positioned 10.5 40 37.5 rotated 0 0 run function lobby_000:objects/001