#> suiryu_taratara_401:game/finish
#
# ゲーム終了
#
# @within
#   function suiryu_taratara_401:game/tick
#   function suiryu_taratara_401:game/game_over

# スタート看板書き換え
  data modify block 3999 51 -5 Text2 set value '[{"text":"START","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute unless score #PlayingID suiryu_taratara_401.trigger matches -2147483648..2147483647 run function suiryu_taratara_401:game/start_check"}}]'

# ロビーへ戻る看板設置
  setblock 3999 51 81 minecraft:oak_wall_sign[facing=south]{Text2:'[{"text":"ロビーに戻る","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/tp @s 3999.50 50.00 4.50 0 0"}}]',Text3:'[{"text": " ","clickEvent": {"action": "run_command","value": "/clear @s"}}]'}

# プレイヤーID初期化
  scoreboard players reset #PlayingID suiryu_taratara_401.trigger

# プレイヤーをtp
  tp @a[predicate=suiryu_taratara_401:location/stage_and_audience] 3999.50 50.00 4.50 0 0

# bossbar消去
  bossbar set taratara_fever_401 visible false

# スケジュールクリア
  schedule clear suiryu_taratara_401:game/bonus_item/fall
  schedule clear suiryu_taratara_401:weapons/flame_flower
  schedule clear suiryu_taratara_401:weapons/phantom

# 経験値・矢・トライデント・アイテム・魚消去
  kill @e[type=#suiryu_taratara_401:first_killed,predicate=suiryu_taratara_401:location/stage]
