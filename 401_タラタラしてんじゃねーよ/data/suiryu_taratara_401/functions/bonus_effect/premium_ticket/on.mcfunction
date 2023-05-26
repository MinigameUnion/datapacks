#> suiryu_taratara_401:bonus_effect/premium_ticket/on
#
# プレミアチケット使用
# ON
#
# @within function suiryu_taratara_401:bonus_effect/premium_ticket/off

# プレイヤーID取得
  scoreboard players operation #PlayerID suiryu_taratara_401.trigger = @s id_000

# プレミアチケットの枚数確認
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger store result score #- suiryu_taratara_401.trigger run data get entity @s Item.tag.401.PremiumTicketCount

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# プレミアチケットがない場合、通知
  execute if score #- suiryu_taratara_401.trigger matches 0 run tellraw @s [{"text":"  プレミアチケットがありません","color":"dark_red"}]

# 説明
  tellraw @s [{"text":"  プレミアチケットを使用すると、","color":"white"}]
  tellraw @s [{"text":"  左の5つの効果が全てミニ無しで有効化されます。","color":"white"}]

# 空白
  tellraw @s ""

# プレミアチケット所持枚数通知
  tellraw @s [{"text":"  プレミアチケット所持数 ","color":"yellow"},{"score":{"name": "#-","objective": "suiryu_taratara_401.trigger"}},{"text": "枚"}]

# プレミアチケットがある場合
  execute if score #- suiryu_taratara_401.trigger matches 1.. run function suiryu_taratara_401:bonus_effect/premium_ticket/on0

# スコアリセット
  scoreboard players reset #PlayerID suiryu_taratara_401.trigger
