#> suiryu_taratara_401:event/cod_fes/001/notification
#
# 第1回コッドフェス
# 告知
#
# @within function suiryu_taratara_401:join

# コッドフェス開催中フラグ設定
  data modify storage suiryu_taratara_401 CodFes.Open set value 1

# 18日後に終了
  execute unless data storage suiryu_taratara_401 CodFes.1{start:1} run schedule function suiryu_taratara_401:event/cod_fes/finish 18d

# 開始フラグ設定
  execute unless data storage suiryu_taratara_401 CodFes.1{start:1} run data modify storage suiryu_taratara_401 CodFes.1.start set value 1

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# イベント名通知
  tellraw @s [{ "text": "  ★コッドフェス開催中！★","color": "red","bold": true}]

# 空白
  tellraw @s ""

# イベント概要通知
  tellraw @s [{ "text": "    リリースを記念してコッドフェスを開催中です！","color": "white","bold": true}]
  tellraw @s [{ "text": "    今回はFEVERに特化した武器をピックアップ！","color": "white","bold": true}]
  tellraw @s [{ "text": "    更にスーパーレア以上の武器の出現確率がアップしています！","color": "white","bold": true}]

# 空白
  tellraw @s ""

# 開催期間通知
  tellraw @s [{ "text": "    開催期間","color": "gold","bold": true}]
  tellraw @s [{ "text": "      ゲーム内時間で18日(ゲームプレイ6時間)","color": "white","bold": true}]
