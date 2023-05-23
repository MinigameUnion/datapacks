#> suiryu_taratara_401:weapons/select_crossbow_redisplay
#
# 選択しているクロスボウを再表示
#
# @within
#   function suiryu_taratara_401:gacha/play/003_get_item
#   function suiryu_taratara_401:game/start

# 看板消去
  setblock 3998 51 -5 air

# コッドクロス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コッドクロス","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.CodCross.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"dark_aqua"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# 進撃のタラスボウ

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"進撃のタラスボウ","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.SingekiTarasBow.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"高速装填Ⅴ","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# デストロイヤー

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"デストロイヤー","color":"white"}', Text2: '[{"text":"レア","color":"gold"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Rare.Destroyer.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"サイテーな効果","color":"dark_red","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"最高のエンチャント","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# アーバレスト

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"アーバレスト","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.Arbarest.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"キル数+10","color":"dark_aqua"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# コンパウンドボウ

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"コンパウンドボウ","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.CompaundBow.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"スコア減少量半減","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# フレイムフラワー

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フレイムフラワー","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.FrameFlower.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+10％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"花火補充","color":"yellow"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# ストロングショット

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ストロングショット","color":"white"}', Text2: '[{"text":"スーパーレア","color":"aqua"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.SuperRare.StrongShot.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"","color":"blue"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# トライクロス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"トライクロス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.TriCross.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"拡散・修繕","color":"gray"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# スコルピウス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"スコルピウス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Scorpius.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"貫通Ⅹ","color":"gray"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# ポリボロス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ポリボロス","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.PoriBoros.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"高速装填Ⅴ","color":"gray"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# ファントム

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"ファントム","color":"white"}', Text2: '[{"text":"レジェンド","color":"yellow"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Legend.Phantom.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+20％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"4秒に1度矢を補充","color":"green"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# リームロード

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"リームロード","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.ReamLoad.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"FEVER時ゲージ回復","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# フォルティス

  ## 獲得済みで回数が残っている場合は選択
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1} unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Count:0} run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"フォルティス","color":"white"}', Text2: '[{"text":"ドリーム","color":"light_purple"},{"text":"(","color":"white"},{"nbt":"PlayerData.Weapons.Dream.Fortis.Count","storage": "suiryu_taratara_401","color":"white"},{"text":")","color":"white"}]', Text3: '{"text":"スコア+30％","color":"aqua","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"最高のエンチャント","color":"light_purple"}'}

  ## 獲得済みで回数が残っていない場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1,Count:0} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

  ## 未獲得の場合は次のクロスボウへ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1} run scoreboard players add #SelectedCrossbow suiryu_taratara_401.trigger 1

# 一周したら戻す
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 14.. run scoreboard players set #SelectedCrossbow suiryu_taratara_401.trigger 0

# タラスボウ
  execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 0 run setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タラスボウ","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"高速装填Ⅱ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"移動速度上昇","color":"aqua"}'}
