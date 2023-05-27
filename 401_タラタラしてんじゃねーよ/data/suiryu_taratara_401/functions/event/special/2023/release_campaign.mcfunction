#> suiryu_taratara_401:event/special/2023/release_campaign
#
# リリース記念キャンペーン
#
# @within function suiryu_taratara_401:join

# ストレージセット
  data modify storage suiryu_taratara_401 PlayerData.Event.Campaign.2023.release_campaign set value 1

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# イベント名通知
  tellraw @s [{ "text": "  ★リリース記念キャンペーン！★","color": "red","bold": true}]

# 空白
  tellraw @s ""

# イベント内容通知
  tellraw @s [{ "text": "    リリースを記念してプレミアチケット5枚をプレゼントします！","color": "white","bold": true}]
  tellraw @s [{ "text": "    プレミアチケットを消費することで、","color": "white","bold": true}]
  tellraw @s [{ "text": "    ミニの消費無しで全てのボーナス効果を発動できるよ！","color": "white","bold": true}]

# プレミアチケット枚数加算

  ## プレミアチケット枚数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.PremiumTicketCount

  ## プレミアチケット枚数加算
    execute store result storage suiryu_taratara_401 PlayerData.PremiumTicketCount int 1 run scoreboard players add #- suiryu_taratara_401.trigger 5
