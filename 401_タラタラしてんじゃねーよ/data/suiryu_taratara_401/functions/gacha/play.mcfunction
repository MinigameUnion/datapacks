#> suiryu_taratara_401:gacha/play
#
# ガチャを回す
# 看板右クリックで実行
#
# @private

# ミニが足りていればガチャを回す
  execute if score @s coin_000 matches 5000.. unless score #GachaPlaying suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:gacha/play/001_summon_cod

# ミニが足りていなければ通知
# 「ミニが足りません」
  execute unless score @s coin_000 matches 5000.. run tellraw @s [{"nbt":"string.coin","storage":"system_000:storage","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]
