#> suiryu_taratara_401:gacha/play/001_summon_cod
#
# ガチャ
# タラ召喚
#
# @within function suiryu_taratara_401:gacha/play

# タラ召喚

  ## 通常時
    execute unless data storage suiryu_taratara_401 CodFes{Open:1} run summon minecraft:cod 3999.50 52.50 11.50 {DeathLootTable: "suiryu_taratara_401:gacha/normal", Health: 3f, Rotation: [-135f, 0f], Air: 100, Tags: ["suiryu_taratara_401.cod"],PersistenceRequired:1b}

  ## 第1回コッドフェス
    execute if data storage suiryu_taratara_401 CodFes{Open:1} run summon minecraft:cod 3999.50 52.50 11.50 {DeathLootTable: "suiryu_taratara_401:gacha/cod_fes/001", Health: 3f, Rotation: [-135f, 0f], Air: 100, Tags: ["suiryu_taratara_401.cod"],PersistenceRequired:1b}

# ミニ消費
  scoreboard players set @s remove_coin_000 5000

# サウンド
  playsound minecraft:entity.player.levelup master @a 3999.48 50.50 9.88 1 2

# プレイヤーID取得
  scoreboard players operation #GachaPlayerID suiryu_taratara_401.trigger = @s id_000

# アイテム消去
  kill @e[type=item,x=3999.0,y=51.0,z=11.0,dx=0,dy=0,dz=0]

# アイテム確認
  schedule function suiryu_taratara_401:gacha/play/002_check_item 2t
