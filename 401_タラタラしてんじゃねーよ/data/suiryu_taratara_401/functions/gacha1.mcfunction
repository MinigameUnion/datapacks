tellraw @a[tag=taratara_gachaed_401] {"text":"--------------------------------------","color":"green"}


execute if score #taratara_gachaed_401 tara_score1_401 matches 1 unless data entity @s Item.tag.401.weapon.rare.tri1 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] ビッグフォーク を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 1 unless data entity @s Item.tag.401.weapon.rare.tri1 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 1 if data entity @s Item.tag.401.weapon.rare.tri1 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] ビッグフォーク を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 1 store result entity @s Item.tag.401.weapon.rare.tri1.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri1_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 1 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri1_401=101..}] store result entity @s Item.tag.401.weapon.rare.tri1.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri1_401=101..}] tara_tri1_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 1 run tag @a[tag=taratara_gachaed_401] add taratara_tri1_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 2 unless data entity @s Item.tag.401.weapon.rare.tri2 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] 進撃のタライデント を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 2 unless data entity @s Item.tag.401.weapon.rare.tri2 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 2 if data entity @s Item.tag.401.weapon.rare.tri2 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] 進撃のタライデント を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 2 store result entity @s Item.tag.401.weapon.rare.tri2.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri2_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 2 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri2_401=101..}] store result entity @s Item.tag.401.weapon.rare.tri2.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri2_401=101..}] tara_tri2_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 2 run tag @a[tag=taratara_gachaed_401] add taratara_tri2_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 3 unless data entity @s Item.tag.401.weapon.rare.tri3 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] コッドキラー を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 3 unless data entity @s Item.tag.401.weapon.rare.tri3 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 3 if data entity @s Item.tag.401.weapon.rare.tri3 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] コッドキラー を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 3 store result entity @s Item.tag.401.weapon.rare.tri3.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri3_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 3 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri3_401=101..}] store result entity @s Item.tag.401.weapon.rare.tri3.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri3_401=101..}] tara_tri3_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 3 run tag @a[tag=taratara_gachaed_401] add taratara_tri3_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 4 unless data entity @s Item.tag.401.weapon.rare.cro1 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] コッドクロス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 4 unless data entity @s Item.tag.401.weapon.rare.cro1 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 4 if data entity @s Item.tag.401.weapon.rare.cro1 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] コッドクロス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 4 store result entity @s Item.tag.401.weapon.rare.cro1.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro1_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 4 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro1_401=101..}] store result entity @s Item.tag.401.weapon.rare.cro1.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro1_401=101..}] tara_cro1_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 4 run tag @a[tag=taratara_gachaed_401] add taratara_cro1_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 5 unless data entity @s Item.tag.401.weapon.rare.cro2 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] 進撃のタラスボウ を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 5 unless data entity @s Item.tag.401.weapon.rare.cro2 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 5 if data entity @s Item.tag.401.weapon.rare.cro2 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] 進撃のタラスボウ を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 5 store result entity @s Item.tag.401.weapon.rare.cro2.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro2_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 5 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro2_401=101..}] store result entity @s Item.tag.401.weapon.rare.cro2.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro2_401=101..}] tara_cro2_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 5 run tag @a[tag=taratara_gachaed_401] add taratara_cro2_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 6 unless data entity @s Item.tag.401.weapon.rare.cro3 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] デストロイヤー を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 6 unless data entity @s Item.tag.401.weapon.rare.cro3 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 6 if data entity @s Item.tag.401.weapon.rare.cro3 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レア","color":"gold"},{"text":"] デストロイヤー を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 6 store result entity @s Item.tag.401.weapon.rare.cro3.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro3_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 6 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro3_401=101..}] store result entity @s Item.tag.401.weapon.rare.cro3.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro3_401=101..}] tara_cro3_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 6 run tag @a[tag=taratara_gachaed_401] add taratara_cro3_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 7 unless data entity @s Item.tag.401.weapon.super_rare.tri4 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] スタートライデント を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 7 unless data entity @s Item.tag.401.weapon.super_rare.tri4 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 7 if data entity @s Item.tag.401.weapon.super_rare.tri4 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] スタートライデント を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 7 store result entity @s Item.tag.401.weapon.super_rare.tri4.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri4_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 7 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri4_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.tri4.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri4_401=101..}] tara_tri4_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 7 run tag @a[tag=taratara_gachaed_401] add taratara_tri4_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 8 unless data entity @s Item.tag.401.weapon.super_rare.tri5 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] オケアノス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 8 unless data entity @s Item.tag.401.weapon.super_rare.tri5 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 8 if data entity @s Item.tag.401.weapon.super_rare.tri5 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] オケアノス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 8 store result entity @s Item.tag.401.weapon.super_rare.tri5.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri5_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 8 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri5_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.tri5.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri5_401=101..}] tara_tri5_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 8 run tag @a[tag=taratara_gachaed_401] add taratara_tri5_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 9 unless data entity @s Item.tag.401.weapon.super_rare.tri6 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ロイヤルトライデント を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 9 unless data entity @s Item.tag.401.weapon.super_rare.tri6 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 9 if data entity @s Item.tag.401.weapon.super_rare.tri6 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ロイヤルトライデント を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 9 store result entity @s Item.tag.401.weapon.super_rare.tri6.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri6_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 9 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri6_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.tri6.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri6_401=101..}] tara_tri6_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 9 run tag @a[tag=taratara_gachaed_401] add taratara_tri6_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 10 unless data entity @s Item.tag.401.weapon.super_rare.tri7 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ポセイドン を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 10 unless data entity @s Item.tag.401.weapon.super_rare.tri7 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 10 if data entity @s Item.tag.401.weapon.super_rare.tri7 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ポセイドン を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 10 store result entity @s Item.tag.401.weapon.super_rare.tri7.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri7_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 10 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri7_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.tri7.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri7_401=101..}] tara_tri7_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 10 run tag @a[tag=taratara_gachaed_401] add taratara_tri7_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 11 unless data entity @s Item.tag.401.weapon.super_rare.cro4 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] アーバレスト を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 11 unless data entity @s Item.tag.401.weapon.super_rare.cro4 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 11 if data entity @s Item.tag.401.weapon.super_rare.cro4 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] アーバレスト を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 11 store result entity @s Item.tag.401.weapon.super_rare.cro4.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro4_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 11 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro4_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.cro4.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro4_401=101..}] tara_cro4_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 11 run tag @a[tag=taratara_gachaed_401] add taratara_cro4_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 12 unless data entity @s Item.tag.401.weapon.super_rare.cro5 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] コンパウンドボウ を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 12 unless data entity @s Item.tag.401.weapon.super_rare.cro5 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 12 if data entity @s Item.tag.401.weapon.super_rare.cro5 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] コンパウンドボウ を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 12 store result entity @s Item.tag.401.weapon.super_rare.cro5.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro5_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 12 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro5_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.cro5.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro5_401=101..}] tara_cro5_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 12 run tag @a[tag=taratara_gachaed_401] add taratara_cro5_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 13 unless data entity @s Item.tag.401.weapon.super_rare.cro6 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] フレイムフラワー を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 13 unless data entity @s Item.tag.401.weapon.super_rare.cro6 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 13 if data entity @s Item.tag.401.weapon.super_rare.cro6 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] フレイムフラワー を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 13 store result entity @s Item.tag.401.weapon.super_rare.cro6.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro6_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 13 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro6_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.cro6.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro6_401=101..}] tara_cro6_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 13 run tag @a[tag=taratara_gachaed_401] add taratara_cro6_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 14 unless data entity @s Item.tag.401.weapon.super_rare.cro7 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ストロングショット を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 14 unless data entity @s Item.tag.401.weapon.super_rare.cro7 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 3
execute if score #taratara_gachaed_401 tara_score1_401 matches 14 if data entity @s Item.tag.401.weapon.super_rare.cro7 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"スーパーレア","color":"aqua"},{"text":"] ストロングショット を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 14 store result entity @s Item.tag.401.weapon.super_rare.cro7.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro7_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 14 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro7_401=101..}] store result entity @s Item.tag.401.weapon.super_rare.cro7.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro7_401=101..}] tara_cro7_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 14 run tag @a[tag=taratara_gachaed_401] add taratara_cro7_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 15 unless data entity @s Item.tag.401.weapon.legend.tri8 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トリアイナ を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 15 unless data entity @s Item.tag.401.weapon.legend.tri8 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 15 if data entity @s Item.tag.401.weapon.legend.tri8 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トリアイナ を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 15 store result entity @s Item.tag.401.weapon.legend.tri8.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri8_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 15 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri8_401=101..}] store result entity @s Item.tag.401.weapon.legend.tri8.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri8_401=101..}] tara_tri8_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 15 run tag @a[tag=taratara_gachaed_401] add taratara_tri8_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 16 unless data entity @s Item.tag.401.weapon.legend.tri9 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トリシューラ を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 16 unless data entity @s Item.tag.401.weapon.legend.tri9 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 16 if data entity @s Item.tag.401.weapon.legend.tri9 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トリシューラ を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 16 store result entity @s Item.tag.401.weapon.legend.tri9.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri9_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 16 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri9_401=101..}] store result entity @s Item.tag.401.weapon.legend.tri9.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri9_401=101..}] tara_tri9_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 16 run tag @a[tag=taratara_gachaed_401] add taratara_tri9_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 17 unless data entity @s Item.tag.401.weapon.legend.tri10 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ブリューナク を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 17 unless data entity @s Item.tag.401.weapon.legend.tri10 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 17 if data entity @s Item.tag.401.weapon.legend.tri10 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ブリューナク を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 17 store result entity @s Item.tag.401.weapon.legend.tri10.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri10_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 17 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri10_401=101..}] store result entity @s Item.tag.401.weapon.legend.tri10.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri10_401=101..}] tara_tri10_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 17 run tag @a[tag=taratara_gachaed_401] add taratara_tri10_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 18 unless data entity @s Item.tag.401.weapon.legend.tri11 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] 金色の三叉槍 を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 18 unless data entity @s Item.tag.401.weapon.legend.tri11 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 18 if data entity @s Item.tag.401.weapon.legend.tri11 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] 金色の三叉槍 を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 18 store result entity @s Item.tag.401.weapon.legend.tri11.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri11_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 18 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri11_401=101..}] store result entity @s Item.tag.401.weapon.legend.tri11.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri11_401=101..}] tara_tri11_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 18 run tag @a[tag=taratara_gachaed_401] add taratara_tri11_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 19 unless data entity @s Item.tag.401.weapon.legend.cro8 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トライクロス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 19 unless data entity @s Item.tag.401.weapon.legend.cro8 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 19 if data entity @s Item.tag.401.weapon.legend.cro8 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] トライクロス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 19 store result entity @s Item.tag.401.weapon.legend.cro8.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro8_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 19 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro8_401=101..}] store result entity @s Item.tag.401.weapon.legend.cro8.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro8_401=101..}] tara_cro8_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 19 run tag @a[tag=taratara_gachaed_401] add taratara_cro8_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 20 unless data entity @s Item.tag.401.weapon.legend.cro9 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] スコルピウス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 20 unless data entity @s Item.tag.401.weapon.legend.cro9 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 20 if data entity @s Item.tag.401.weapon.legend.cro9 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] スコルピウス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 20 store result entity @s Item.tag.401.weapon.legend.cro9.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro9_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 20 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro9_401=101..}] store result entity @s Item.tag.401.weapon.legend.cro9.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro9_401=101..}] tara_cro9_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 20 run tag @a[tag=taratara_gachaed_401] add taratara_cro9_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 21 unless data entity @s Item.tag.401.weapon.legend.cro10 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ポリボロス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 21 unless data entity @s Item.tag.401.weapon.legend.cro10 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 21 if data entity @s Item.tag.401.weapon.legend.cro10 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ポリボロス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 21 store result entity @s Item.tag.401.weapon.legend.cro10.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro10_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 21 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro10_401=101..}] store result entity @s Item.tag.401.weapon.legend.cro10.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro10_401=101..}] tara_cro10_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 21 run tag @a[tag=taratara_gachaed_401] add taratara_cro10_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 22 unless data entity @s Item.tag.401.weapon.legend.cro11 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ファントム を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 22 unless data entity @s Item.tag.401.weapon.legend.cro11 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 8
execute if score #taratara_gachaed_401 tara_score1_401 matches 22 if data entity @s Item.tag.401.weapon.legend.cro11 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"レジェンド","color":"yellow"},{"text":"] ファントム を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 22 store result entity @s Item.tag.401.weapon.legend.cro11.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro11_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 22 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro11_401=101..}] store result entity @s Item.tag.401.weapon.legend.cro11.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro11_401=101..}] tara_cro11_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 22 run tag @a[tag=taratara_gachaed_401] add taratara_cro11_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 23 unless data entity @s Item.tag.401.weapon.dream.tri12 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] ガウディウム を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 23 unless data entity @s Item.tag.401.weapon.dream.tri12 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 14
execute if score #taratara_gachaed_401 tara_score1_401 matches 23 if data entity @s Item.tag.401.weapon.dream.tri12 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] ガウディウム を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 23 store result entity @s Item.tag.401.weapon.dream.tri12.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri12_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 23 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri12_401=101..}] store result entity @s Item.tag.401.weapon.dream.tri12.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri12_401=101..}] tara_tri12_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 23 run tag @a[tag=taratara_gachaed_401] add taratara_tri12_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 24 unless data entity @s Item.tag.401.weapon.dream.tri13 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] フェスティーナ を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 24 unless data entity @s Item.tag.401.weapon.dream.tri13 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 14
execute if score #taratara_gachaed_401 tara_score1_401 matches 24 if data entity @s Item.tag.401.weapon.dream.tri13 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] フェスティーナ を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 24 store result entity @s Item.tag.401.weapon.dream.tri13.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_tri13_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 24 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_tri13_401=101..}] store result entity @s Item.tag.401.weapon.dream.tri13.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_tri13_401=101..}] tara_tri13_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 24 run tag @a[tag=taratara_gachaed_401] add taratara_tri13_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 25 unless data entity @s Item.tag.401.weapon.dream.cro12 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] リームロード を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 25 unless data entity @s Item.tag.401.weapon.dream.cro12 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 14
execute if score #taratara_gachaed_401 tara_score1_401 matches 25 if data entity @s Item.tag.401.weapon.dream.cro12 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] リームロード を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 25 store result entity @s Item.tag.401.weapon.dream.cro12.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro12_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 25 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro12_401=101..}] store result entity @s Item.tag.401.weapon.dream.cro12.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro12_401=101..}] tara_cro12_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 25 run tag @a[tag=taratara_gachaed_401] add taratara_cro12_401

execute if score #taratara_gachaed_401 tara_score1_401 matches 26 unless data entity @s Item.tag.401.weapon.dream.cro13 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] フォルティス を新たに入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 26 unless data entity @s Item.tag.401.weapon.dream.cro13 store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_weapon_401 14
execute if score #taratara_gachaed_401 tara_score1_401 matches 26 if data entity @s Item.tag.401.weapon.dream.cro13 run tellraw @a[tag=taratara_gachaed_401] ["",{"text":"["},{"text":"ドリーム","color":"light_purple"},{"text":"] フォルティス を入手した！"}]
execute if score #taratara_gachaed_401 tara_score1_401 matches 26 store result entity @s Item.tag.401.weapon.dream.cro13.count int 1 run scoreboard players add @a[tag=taratara_gachaed_401] tara_cro13_401 10
execute if score #taratara_gachaed_401 tara_score1_401 matches 26 if entity @a[limit=1,tag=taratara_gachaed_401,scores={tara_cro13_401=101..}] store result entity @s Item.tag.401.weapon.dream.cro13.count int 1 run scoreboard players set @a[tag=taratara_gachaed_401,scores={tara_cro13_401=101..}] tara_cro13_401 100
execute if score #taratara_gachaed_401 tara_score1_401 matches 26 run tag @a[tag=taratara_gachaed_401] add taratara_cro13_401




execute if score #taratara_gachaed_401 tara_score1_401 matches 1..14 run playsound minecraft:entity.firework_rocket.twinkle master @a 3999.51 50.53 9.88 1
execute if score #taratara_gachaed_401 tara_score1_401 matches 1.. run particle minecraft:firework 3999.5 51.5 11.5 0 0 0 1 300 normal
execute if score #taratara_gachaed_401 tara_score1_401 matches 7..14 run playsound minecraft:item.trident.riptide_3 master @a 3999.51 50.53 9.88 1 2
execute if score #taratara_gachaed_401 tara_score1_401 matches 7..14 run particle minecraft:flash 3999.5 51.5 11.5 0 0 0 1 100 normal
execute if score #taratara_gachaed_401 tara_score1_401 matches 7..14 run particle minecraft:flash 3999.5 51.5 11.5 1 1 1 1 100 normal
execute if score #taratara_gachaed_401 tara_score1_401 matches 15..22 run playsound minecraft:item.trident.thunder master @a 3999.51 50.53 9.88 1 2
execute if score #taratara_gachaed_401 tara_score1_401 matches 15..22 run particle minecraft:firework 3999.5 53.5 11.5 0 0 0 1 300 normal
execute if score #taratara_gachaed_401 tara_score1_401 matches 23.. run playsound minecraft:ui.toast.challenge_complete master @a 3999.51 50.53 9.88 1 0
execute if score #taratara_gachaed_401 tara_score1_401 matches 23.. run particle minecraft:end_rod 3999.5 51.5 11.5 0 0 0 0.1 300 normal
execute if score #taratara_gachaed_401 tara_score1_401 matches 23.. run particle minecraft:end_rod 3999.5 51.5 11.5 0 0 0 0.5 300 normal

execute as @a[tag=taratara_gachaed_401] run function suiryu_taratara_401:select_trident0
execute as @a[tag=taratara_gachaed_401] run function suiryu_taratara_401:select_crossbow0
