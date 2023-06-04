#> suiryu_taratara_401:leave_game
#
# ロビーへ戻る
# 看板右クリックで実行
#
# @private

# ロビーへ戻る
  function player_000:leave_game

# 他にプレイヤーが居なければ初期化
  execute unless entity @a[scores={playing_000=401}] run function suiryu_taratara_401:init
