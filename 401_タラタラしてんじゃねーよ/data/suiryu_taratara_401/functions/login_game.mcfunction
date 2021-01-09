scoreboard players set @s playing_000 401
scoreboard players set @s tara_score1_401 0
tp @s 3999.46 50.00 4.47
execute if entity @s[tag=!pticket_1_401] run tellraw @s {"text":"------------------------------","color":"green","italic":false}
execute if entity @s[tag=!pticket_1_401] run tellraw @s {"text":"リリース記念キャンペーン！","color":"red","bold":true,"italic":false}
execute if entity @s[tag=!pticket_1_401] run tellraw @s {"text":"リリースを記念してプレミアチケット5枚をプレゼントします！","color":"white","bold":true,"italic":false}
execute if entity @s[tag=!pticket_1_401] run scoreboard players add @s tara_pticket_401 5
scoreboard players operation #ID num_000 = @s id_000
tag @s add pticket_save_401
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.p_ticket int 1 store result entity @s Item.tag.401.p_ticket_1 int 1 run scoreboard players get @a[tag=pticket_save_401,limit=1] tara_pticket_401
tag @s remove pticket_save_401
tag @s add pticket_1_401
execute unless score #cod_fes_401 tara_score1_401 matches 1.. run schedule function suiryu_taratara_401:cod_fes_finish 18d
execute unless score #cod_fes_401 tara_score1_401 matches 1.. run scoreboard players set #cod_fes_401 tara_tri1_401 0
execute unless score #cod_fes_401 tara_score1_401 matches 1.. run scoreboard players set #cod_fes_401 tara_score1_401 1
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"------------------------------","color":"green","italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"コッドフェス開催中！","color":"red","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"リリースを記念してコッドフェスを開催中です！","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"今回はFEVERに特化した武器をピックアップ！","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"更にスーパーレア以上の武器の出現確率がアップしています！","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"レア：80%→70%","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"スーパーレア：17%→24%","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"レジェンド：2.9%→5%","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"ドリーム：0.1%→1%","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"ピックアップ武器","color":"yellow","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"レア","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・進撃のタライデント (30%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+5% / FEVER時キル数ボーナス増加","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"スーパーレア","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・スタートライデント (10%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+10% / スタート時FEVERゲージ50%上昇","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"レジェンド","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・ブリューナク (1.9%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+20% / FEVERゲージ上昇量2倍","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・金色の三叉槍 (1.9%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+20% / ボーナスミニ2倍","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"ドリーム","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・フェスティーナ (0.4%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+30% / スタート時FEVERゲージ100%上昇","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"・リームロード (0.4%)","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"  スコア+30% / FEVER中キル時ゲージ回復","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"","color":"white","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"開催期間","color":"gold","bold":true,"italic":false}
execute if score #cod_fes_401 tara_score1_401 matches 1.. if score #cod_fes_401 tara_tri1_401 matches 0 run tellraw @s {"text":"ゲーム内時間で18日(ゲームプレイ6時間)","color":"white","bold":true,"italic":false}

function player_000:join_game

forceload add 4000 -5
data modify block 4000 51 -5 Text3 set from storage temp_000:loading game.401.high_score.Text3
data modify block 4000 51 -5 Text4 set from storage temp_000:loading game.401.high_score.Text4
forceload remove 4000 -5

execute store result score #taratara_highest_score_401 tara_score1_401 run data get storage temp_000:loading game.401.high_score.score
