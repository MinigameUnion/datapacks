#>  suiryu_taratara_401:weapons/select_crossbow_recount
#
# 選択しているクロスボウの回数を更新する
#
# @within function suiryu_taratara_401:game/start_check

# 看板消去
  setblock 3998 51 -5 air

# コッドクロス
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コッドクロス","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.CodCross.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"dark_aqua"}'}

# 進撃のタラスボウ
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"進撃のタラスボウ","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.SingekiTarasBow.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"高速装填Ⅴ","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"light_purple"}'}

# デストロイヤー
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"デストロイヤー","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.Destroyer.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"サイテーな効果","color":"dark_red","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"最高のエンチャント","color":"light_purple"}'}

# アーバレスト
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"アーバレスト","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Arbarest.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"キル数+10","color":"dark_aqua"}'}

# コンパウンドボウ
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コンパウンドボウ","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.CompaundBow.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"スコア減少量半減","color":"light_purple"}'}

# フレイムフラワー
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フレイムフラワー","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.FrameFlower.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"花火補充","color":"yellow"}'}

# ストロングショット
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ストロングショット","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.StrongShot.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"blue"}'}

# トライクロス
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トライクロス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.TriCross.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"拡散・修繕","color":"gray"}'}

# スコルピウス
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"スコルピウス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Scorpius.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"貫通Ⅹ","color":"gray"}'}

# ポリボロス
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ポリボロス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.PoriBoros.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"高速装填Ⅴ","color":"gray"}'}

# ファントム
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ファントム","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Phantom.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"4秒に1度矢を補充","color":"green"}'}

# リームロード
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"リームロード","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.ReamLoad.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"FEVER時ゲージ回復","color":"light_purple"}'}

# フォルティス
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フォルティス","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Fortis.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"最高のエンチャント","color":"light_purple"}'}

# タラスボウ
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 0 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タラスボウ","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"高速装填Ⅱ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"移動速度上昇","color":"aqua"}'}
