#> suiryu_taratara_401:weapons/select_trident_redisplay
#
# 選択しているトライデントを再表示
#
# @within
#   function suiryu_taratara_401:gacha/play/003_get_item
#   function suiryu_taratara_401:game/start

# 看板消去
  setblock 3997 51 -5 air

# ビッグフォーク

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ビッグフォーク","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.BigFork.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+5％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"キル数+3","color":"dark_aqua"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# 進撃のタライデント

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"進撃のタライデント","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.SingekiTaraident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+5％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVER時キルB増加","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# コッドキラー

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コッドキラー","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.CodKiller.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# スタートライデント

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"スタートライデント","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.StarTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージ+50％","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# オケアノス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"オケアノス","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Okeanos.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"タラの窒息遅延","color":"blue"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# ロイヤルトライデント

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ロイヤルトライデント","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.LoyalTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"忠誠Ⅹ","color":"gray"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# ポセイドン

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ポセイドン","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Poseidon.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"blue"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# トリアイナ

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トリアイナ","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Triaina.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"キル数ボーナス増加","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# トリシューラ

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トリシューラ","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Trisura.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"継続ボーナス10倍","color":"yellow"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# ブリューナク

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ブリューナク","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Brunak.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージ上昇2倍","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# 金色の三叉槍

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"金色の三叉槍","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.GoldenTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"ボーナスミニ2倍","color":"yellow"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# ガウディウム

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ガウディウム","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Gaudium.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"獲得ミニ2倍","color":"yellow"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# フェスティーナ

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Count:0} run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フェスティーナ","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Festina.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージMAX","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1,Count:0} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のトライデントへ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1} run scoreboard players add #SelectedTrident suiryu_taratara_401.trigger 1

# 一周したら戻す
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 14.. run scoreboard players set #SelectedTrident suiryu_taratara_401.trigger 0

# タライデント
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 0 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タライデント","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"忠誠Ⅰ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"light_purple"}'}
