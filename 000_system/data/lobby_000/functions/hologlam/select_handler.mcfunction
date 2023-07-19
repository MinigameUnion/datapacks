#> lobby_000:hologlam/select_handler
### ホログラムUIをクリックしたとき
# @within tag/function minecraft:handler/001_hologram.select

## ロビー
execute if score @s hologram_id_001 matches 100..199 run function lobby_000:hologlam/select