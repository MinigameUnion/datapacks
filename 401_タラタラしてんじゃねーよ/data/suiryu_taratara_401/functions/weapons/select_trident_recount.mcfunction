#> suiryu_taratara_401:weapons/select_trident_recount
#
# 選択しているトライデントの回数を更新する
#
# @within function suiryu_taratara_401:game/start_check

# 看板消去
  setblock 3997 51 -5 air

# ビッグフォーク
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ビッグフォーク","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.BigFork.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+5％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"キル数+3","color":"dark_aqua"}'}

# 進撃のタライデント
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"進撃のタライデント","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.SingekiTaraident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+5％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVER時キルB増加","color":"light_purple"}'}

# コッドキラー
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コッドキラー","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.CodKiller.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"light_purple"}'}

# スタートライデント
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"スタートライデント","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.StarTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージ+50％","color":"light_purple"}'}

# オケアノス
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"オケアノス","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Okeanos.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"タラの窒息遅延","color":"blue"}'}

# ロイヤルトライデント
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ロイヤルトライデント","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.LoyalTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"忠誠Ⅹ","color":"gray"}'}

# ポセイドン
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ポセイドン","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Poseidon.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"blue"}'}

# トリアイナ
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トリアイナ","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Triaina.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"キル数ボーナス増加","color":"light_purple"}'}

# トリシューラ
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トリシューラ","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Trisura.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"継続ボーナス10倍","color":"yellow"}'}

# ブリューナク
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ブリューナク","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Brunak.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージ上昇2倍","color":"light_purple"}'}

# 金色の三叉槍
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"金色の三叉槍","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.GoldenTrident.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"ボーナスミニ2倍","color":"yellow"}'}

# ガウディウム
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ガウディウム","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Gaudium.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"獲得ミニ2倍","color":"yellow"}'}

# フェスティーナ
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フェスティーナ","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Festina.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"FEVERゲージMAX","color":"light_purple"}'}

# タライデント
  execute if score #SelectedTrident suiryu_taratara_401.trigger matches 0 run setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タライデント","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"忠誠Ⅰ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"light_purple"}'}
