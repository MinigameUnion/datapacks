#> suiryu_taratara_401:game/start/count_down/0
#
# カウントダウン
# 0
#
# @within function suiryu_taratara_401:game/start/count_down/1

# タイトル
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] title {"text":"START","color":"gold"}

# サウンド
  execute as @a[predicate=suiryu_taratara_401:location/stage_and_audience] at @s run playsound item.trident.thunder master @s ~ ~ ~ 1 2

# タラを落とす
  function suiryu_taratara_401:game/fish/cod_fall

# 最初のタラを落とす
  summon cod 4000 55 100 {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.falling"],Health:0.1f,ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Air:120}

# bossbar設定
  bossbar set taratara_fever_401 color white
  bossbar set taratara_fever_401 name [{"text":"F","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"V","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"R","color":"gray","bold":true}]
  execute store result bossbar taratara_fever_401 value run scoreboard players get #FeverGauge suiryu_taratara_401.trigger
  bossbar set taratara_fever_401 visible true

# ゲーム開始
  schedule function suiryu_taratara_401:game/tick 1t

# 10秒毎にボーナスアイテムを出現させる
  schedule function suiryu_taratara_401:game/bonus_item/fall 10s
