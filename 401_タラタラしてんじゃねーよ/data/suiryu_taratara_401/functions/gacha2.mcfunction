tellraw @s {"text":"--------------------------------------","color":"green"}
execute unless score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s ["",{"text":"プレミアガチャ提供割合","color":"red"},{"text":"\nドリーム・・・・・0.1％\nレジェンド・・・・2.9％\nスーパーレア・・17.0％\nレア・・・・・・80.0％\n\n"},{"text":"プレミアガチャ出現一覧","color":"red"},{"text":"\n "}]
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s ["",{"text":"コッドフェス提供割合","color":"red"},{"text":"\nドリーム・・・・・1.0％\nレジェンド・・・・5.0％\nスーパーレア・・・24.0％\nレア・・・・・・・70.0％\n\n"},{"text":"コッドフェス出現一覧","color":"red"},{"text":"\n "}]

execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"ピックアップ武器","color":"yellow","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"レア","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・進撃のタライデント (30%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+5% / FEVER時キル数ボーナス増加","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"スーパーレア","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・スタートライデント (10%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+10% / スタート時FEVERゲージ50%上昇","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"レジェンド","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・ブリューナク (1.9%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+20% / FEVERゲージ上昇量2倍","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・金色の三叉槍 (1.9%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+20% / ボーナスミニ2倍","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"ドリーム","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・フェスティーナ (0.4%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+30% / スタート時FEVERゲージ100%上昇","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"・リームロード (0.4%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run tellraw @s {"text":"  スコア+30% / FEVER中キル時ゲージ回復","color":"white","bold":true,"italic":false}

tellraw @s ["",{"text":"ドリーム","color":"light_purple"},{"text":"--------------------------------"}]

tellraw @s ["",{"text":"\n＜トライデント＞"}]

execute if entity @s[tag=taratara_tri12_401] run tellraw @s ["",{"text":"ガウディウム"}]
execute if entity @s[tag=!taratara_tri12_401] run tellraw @s ["",{"text":"ガウディウム(未獲得)"}]
execute if entity @s[tag=taratara_tri13_401] run tellraw @s ["",{"text":"フェスティーナ"}]
execute if entity @s[tag=!taratara_tri13_401] run tellraw @s ["",{"text":"フェスティーナ(未獲得)"}]

tellraw @s ["",{"text":"\n＜クロスボウ＞"}]

execute if entity @s[tag=taratara_cro12_401] run tellraw @s ["",{"text":"リームロード"}]
execute if entity @s[tag=!taratara_cro12_401] run tellraw @s ["",{"text":"リームロード(未獲得)"}]
execute if entity @s[tag=taratara_cro13_401] run tellraw @s ["",{"text":"フォルティス"}]
execute if entity @s[tag=!taratara_cro13_401] run tellraw @s ["",{"text":"フォルティス(未獲得)"}]

tellraw @s ["",{"text":"\n"},{"text":"レジェンド","color":"yellow"},{"text":"--------------------------------"}]

tellraw @s ["",{"text":"\n＜トライデント＞"}]

execute if entity @s[tag=taratara_tri8_401] run tellraw @s ["",{"text":"トリアイナ"}]
execute if entity @s[tag=!taratara_tri8_401] run tellraw @s ["",{"text":"トリアイナ(未獲得)"}]
execute if entity @s[tag=taratara_tri9_401] run tellraw @s ["",{"text":"トリシューラ"}]
execute if entity @s[tag=!taratara_tri9_401] run tellraw @s ["",{"text":"トリシューラ(未獲得)"}]
execute if entity @s[tag=taratara_tri10_401] run tellraw @s ["",{"text":"ブリューナク"}]
execute if entity @s[tag=!taratara_tri10_401] run tellraw @s ["",{"text":"ブリューナク(未獲得)"}]
execute if entity @s[tag=taratara_tri11_401] run tellraw @s ["",{"text":"金色の三叉槍"}]
execute if entity @s[tag=!taratara_tri11_401] run tellraw @s ["",{"text":"金色の三叉槍(未獲得)"}]

tellraw @s ["",{"text":"\n＜クロスボウ＞"}]

execute if entity @s[tag=taratara_cro8_401] run tellraw @s ["",{"text":"トライクロス"}]
execute if entity @s[tag=!taratara_cro8_401] run tellraw @s ["",{"text":"トライクロス(未獲得)"}]
execute if entity @s[tag=taratara_cro9_401] run tellraw @s ["",{"text":"スコルピウス"}]
execute if entity @s[tag=!taratara_cro9_401] run tellraw @s ["",{"text":"スコルピウス(未獲得)"}]
execute if entity @s[tag=taratara_cro10_401] run tellraw @s ["",{"text":"ポリボロス"}]
execute if entity @s[tag=!taratara_cro10_401] run tellraw @s ["",{"text":"ポリボロス(未獲得)"}]
execute if entity @s[tag=taratara_cro11_401] run tellraw @s ["",{"text":"ファントム"}]
execute if entity @s[tag=!taratara_cro11_401] run tellraw @s ["",{"text":"ファントム(未獲得)"}]

tellraw @s ["",{"text":"\n"},{"text":"スーパーレア","color":"aqua"},{"text":"--------------------------------"}]

tellraw @s ["",{"text":"\n＜トライデント＞"}]

execute if entity @s[tag=taratara_tri4_401] run tellraw @s ["",{"text":"スタートライデント"}]
execute if entity @s[tag=!taratara_tri4_401] run tellraw @s ["",{"text":"スタートライデント(未獲得)"}]
execute if entity @s[tag=taratara_tri5_401] run tellraw @s ["",{"text":"オケアノス"}]
execute if entity @s[tag=!taratara_tri5_401] run tellraw @s ["",{"text":"オケアノス(未獲得)"}]
execute if entity @s[tag=taratara_tri6_401] run tellraw @s ["",{"text":"ロイヤルトライデント"}]
execute if entity @s[tag=!taratara_tri6_401] run tellraw @s ["",{"text":"ロイヤルトライデント(未獲得)"}]
execute if entity @s[tag=taratara_tri7_401] run tellraw @s ["",{"text":"ポセイドン"}]
execute if entity @s[tag=!taratara_tri7_401] run tellraw @s ["",{"text":"ポセイドン(未獲得)"}]

tellraw @s ["",{"text":"\n＜クロスボウ＞"}]

execute if entity @s[tag=taratara_cro4_401] run tellraw @s ["",{"text":"アーバレスト"}]
execute if entity @s[tag=!taratara_cro4_401] run tellraw @s ["",{"text":"アーバレスト(未獲得)"}]
execute if entity @s[tag=taratara_cro5_401] run tellraw @s ["",{"text":"コンパウンドボウ"}]
execute if entity @s[tag=!taratara_cro5_401] run tellraw @s ["",{"text":"コンパウンドボウ(未獲得)"}]
execute if entity @s[tag=taratara_cro6_401] run tellraw @s ["",{"text":"フレイムフラワー"}]
execute if entity @s[tag=!taratara_cro6_401] run tellraw @s ["",{"text":"フレイムフラワー(未獲得)"}]
execute if entity @s[tag=taratara_cro7_401] run tellraw @s ["",{"text":"ストロングショット"}]
execute if entity @s[tag=!taratara_cro7_401] run tellraw @s ["",{"text":"ストロングショット(未獲得)"}]

tellraw @s ["",{"text":"\n"},{"text":"レア","color":"gold"},{"text":"--------------------------------"}]

tellraw @s ["",{"text":"\n＜トライデント＞"}]

execute if entity @s[tag=taratara_tri1_401] run tellraw @s ["",{"text":"ビッグフォーク"}]
execute if entity @s[tag=!taratara_tri1_401] run tellraw @s ["",{"text":"ビッグフォーク(未獲得)"}]
execute if entity @s[tag=taratara_tri2_401] run tellraw @s ["",{"text":"進撃のタライデント"}]
execute if entity @s[tag=!taratara_tri2_401] run tellraw @s ["",{"text":"進撃のタライデント(未獲得)"}]
execute if entity @s[tag=taratara_tri3_401] run tellraw @s ["",{"text":"コッドキラー"}]
execute if entity @s[tag=!taratara_tri3_401] run tellraw @s ["",{"text":"コッドキラー(未獲得)"}]

tellraw @s ["",{"text":"\n＜クロスボウ＞"}]

execute if entity @s[tag=taratara_cro1_401] run tellraw @s ["",{"text":"コッドクロス"}]
execute if entity @s[tag=!taratara_cro1_401] run tellraw @s ["",{"text":"コッドクロス(未獲得)"}]
execute if entity @s[tag=taratara_cro2_401] run tellraw @s ["",{"text":"進撃のタラスボウ"}]
execute if entity @s[tag=!taratara_cro2_401] run tellraw @s ["",{"text":"進撃のタラスボウ(未獲得)"}]
execute if entity @s[tag=taratara_cro3_401] run tellraw @s ["",{"text":"デストロイヤー"}]
execute if entity @s[tag=!taratara_cro3_401] run tellraw @s ["",{"text":"デストロイヤー(未獲得)"}]

execute unless score @s tara_weapon_401 matches 0.. run scoreboard players set @s tara_weapon_401 0
tellraw @s ["",{"text":"\n"},{"text":"-----------------------------------"}]
tellraw @s ["",{"text":"\n"},{"text":"初獲得ボーナス","color":"red"}]
tellraw @s ["",{"text":"\n武器を初めて入手すると、初獲得ボーナスを獲得できます。\n現在の初獲得ボーナス・・・スコア+"},{"score":{"name":"@s","objective":"tara_weapon_401"}},{"text":"\uff05"}]
