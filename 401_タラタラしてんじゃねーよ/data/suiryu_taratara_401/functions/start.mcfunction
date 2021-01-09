#ゲームスタート
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run gamemode adventure @a[scores={tara_score1_401=1}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 positioned 4000 50 100 run kill @e[type=minecraft:experience_orb,distance=..100]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 positioned 4000 50 100 run kill @e[type=minecraft:arrow,distance=..100]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 positioned 4000 50 100 run kill @e[type=minecraft:trident,distance=..100]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 positioned 4000 50 100 run kill @e[type=minecraft:item,distance=..100]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run title @a[scores={playing_000=401}] clear
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run gamemode spectator @a[scores={tara_score1_401=0}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run tp @a[scores={playing_000=401}] 4000 50 100
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players set #taratara_gaming_score_401 tara_score1_401 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players set #taratara_fever_401 tara_score1_401 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players set #taratara_fever0_401 tara_score1_401 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players set #taratara_kill_count_401 tara_score1_401 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players set #taratara_score_up_401 tara_score1_401 100
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 as @a[scores={tara_score1_401=1}] unless score @s tara_hscore_401 matches 0.. run scoreboard players set @s tara_hscore_401 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run clear @a[scores={playing_000=401}]

execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 unless score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 if score #taratara_start_bonus_kill_count_401 tara_score1_401 matches 1 run scoreboard players add @a[scores={tara_score1_401=1}] remove_coin_000 500
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 unless score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 if score #taratara_start_bonus_score_401 tara_score1_401 matches 1 run scoreboard players add @a[scores={tara_score1_401=1}] remove_coin_000 500
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 unless score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 if score #taratara_start_bonus_air_401 tara_score1_401 matches 1 run scoreboard players add @a[scores={tara_score1_401=1}] remove_coin_000 500
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 unless score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 if score #taratara_start_bonus_fever_401 tara_score1_401 matches 1 run scoreboard players add @a[scores={tara_score1_401=1}] remove_coin_000 500
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 unless score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 if score #taratara_start_bonus_mini_401 tara_score1_401 matches 1 run scoreboard players add @a[scores={tara_score1_401=1}] remove_coin_000 500
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players operation #ID num_000 = @a[scores={tara_score1_401=1}] id_000
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.p_ticket int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_pticket_401 1

execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_start_bonus_score_401 tara_score1_401 matches 1 run scoreboard players add #taratara_score_up_401 tara_score1_401 30


execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players operation #ID num_000 = @a[scores={tara_score1_401=1}] id_000

execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 0 run give @a[scores={tara_score1_401=1}] minecraft:trident{CustomModelData: 4001, display: {Name: '{"text":"タライデント","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:loyalty", lvl: 1s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 1 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"ビッグフォーク","color":"white","italic":false}', Lore: ['{"text":"スコア+5%","color":"aqua","italic":false}', '{"text":"キル数+3","color":"dark_aqua","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 1 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.tri1.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri1_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 1 run scoreboard players set #taratara_kill_count_401 tara_score1_401 3
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 1..2 run scoreboard players add #taratara_score_up_401 tara_score1_401 5
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 2 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"進撃のタライデント","color":"white","italic":false}', Lore: ['{"text":"スコア+5%","color":"aqua","italic":false}', '{"text":"FEVER時キル数ボーナス増加","color":"light_purple","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 2 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.tri2.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri2_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 3 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"コッドキラー","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"","color":"dark_aqua","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 3 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.tri3.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri3_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 3..6 run scoreboard players add #taratara_score_up_401 tara_score1_401 10
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 4 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"スタートライデント","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"スタート時FEVERゲージ50%上昇","color":"light_purple","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 4 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.tri4.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri4_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 5 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"オケアノス","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"タラが窒息死するまでの時間が少し延びる","color":"blue","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 5 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.tri5.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri5_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 6 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"ロイヤルトライデント","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:loyalty", lvl: 10s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 6 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.tri6.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri6_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 7 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"ポセイドン","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 7 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.tri7.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri7_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 7..11 run scoreboard players add #taratara_score_up_401 tara_score1_401 20
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 8 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"トリアイナ","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"キル数ボーナス増加","color":"light_purple","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 8 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.tri8.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri8_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 9 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"トリシューラ","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"継続ボーナス10倍","color":"yellow","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 9 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.tri9.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri9_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 10 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"ブリューナク","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"FEVERゲージ上昇量2倍","color":"light_purple","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 10 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.tri10.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri10_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 11 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"金色の三叉槍","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"ボーナスミニ2倍","color":"yellow","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 11 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.tri11.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri11_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 12 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"ガウディウム","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"獲得ミニ2倍","color":"yellow","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 12 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.dream.tri12.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri12_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 12..13 run scoreboard players add #taratara_score_up_401 tara_score1_401 30
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 13 run give @a[scores={tara_score1_401=1}] minecraft:trident{display: {Name: '{"text":"フェスティーナ","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"スタート時FEVERゲージ100%上昇","color":"light_purple","italic":false}']}} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 13 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.dream.tri13.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_tri13_401 1


execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 0 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4001, display: {Name: '{"text":"タラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 1, Operation: 1, UUID: [I; 0, 401, 20200921, 2234], Slot: "mainhand"}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 1 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4002, display: {Name: '{"text":"コッドクロス","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 1s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 1 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.cro1.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro1_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 1 run scoreboard players add #taratara_score_up_401 tara_score1_401 10
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 2 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4003, display: {Name: '{"text":"進撃のタラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 2 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.cro2.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro2_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 3 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4004, display: {Name: '{"text":"デストロイヤー","color":"white","italic":false}', Lore: ['{"text":"スコア-90%","color":"dark_red","italic":false}', '{"text":"ボーナスミニ無し","color":"dark_red","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}, {id: "minecraft:multishot", lvl: 1s}, {id: "minecraft:piercing", lvl: 10s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 3 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.rare.cro3.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro3_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 3 run scoreboard players remove #taratara_score_up_401 tara_score1_401 90
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 4 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4005, display: {Name: '{"text":"アーバレスト","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"キル数+10","color":"dark_aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 4 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.cro4.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro4_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 4..6 run scoreboard players add #taratara_score_up_401 tara_score1_401 10
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 4 run scoreboard players set #taratara_kill_count_401 tara_score1_401 10
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 5 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4006, display: {Name: '{"text":"コンパウンドボウ","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"タラではない魚を倒した時のスコア減少量半減","color":"light_purple","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 5 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.cro5.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro5_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 6 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4007, display: {Name: '{"text":"フレイムフラワー","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"10秒に1度、花火を補充する","color":"yellow","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 6 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.cro6.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro6_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 if score #taratara_select_crossbow_401 tara_score1_401 matches 6 run schedule function suiryu_taratara_401:flame_flower 10s
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 7 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4008, display: {Name: '{"text":"ストロングショット","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 7 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.super_rare.cro7.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro7_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 7..11 run scoreboard players add #taratara_score_up_401 tara_score1_401 20
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 8 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4009, display: {Name: '{"text":"トライクロス","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 3s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:multishot", lvl: 1s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 8 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.cro8.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro8_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 9 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4010, display: {Name: '{"text":"スコルピウス","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 3s}, {id: "minecraft:piercing", lvl: 10s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 9 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.cro9.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro9_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 10 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4011, display: {Name: '{"text":"ポリボロス","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 10 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.cro10.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro10_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 11 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4012, display: {Name: '{"text":"ファントム","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"4秒に1度、矢を補充する","color":"green","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 3s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 11 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.legend.cro11.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro11_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 if score #taratara_select_crossbow_401 tara_score1_401 matches 11 run schedule function suiryu_taratara_401:phantom 4s
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 12 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4013, display: {Name: '{"text":"リームロード","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"FEVER中キル時ゲージ回復","color":"light_purple","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 4s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 12 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.dream.cro12.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro12_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 12..13 run scoreboard players add #taratara_score_up_401 tara_score1_401 30
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 13 run give @a[scores={tara_score1_401=1}] minecraft:crossbow{CustomModelData: 4014, display: {Name: '{"text":"フォルティス","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:mending", lvl: 1s}, {id: "minecraft:multishot", lvl: 1s}, {id: "minecraft:piercing", lvl: 10s}, {id: "minecraft:quick_charge", lvl: 5s}]} 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 13 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.weapon.dream.cro13.count int 1 run scoreboard players remove @a[scores={tara_score1_401=1}] tara_cro13_401 1




#獲得武器ボーナス
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run scoreboard players operation #taratara_score_up_401 tara_score1_401 += @a[scores={tara_score1_401=1}] tara_weapon_401



execute if score #taratara_gaming_time_401 tara_score1_401 matches 1 run give @a[scores={tara_score1_401=1}] minecraft:tipped_arrow{display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879} 64
execute if score #taratara_gaming_time_401 tara_score1_401 matches 20 run title @a[scores={playing_000=401}] times 5 5 5
execute if score #taratara_gaming_time_401 tara_score1_401 matches 20 run title @a[scores={playing_000=401}] title {"text":"3","color":"gold"}
execute if score #taratara_gaming_time_401 tara_score1_401 matches 20 at @a[scores={playing_000=401}] run playsound minecraft:block.note_block.bit master @a[scores={playing_000=401}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 40 run title @a[scores={playing_000=401}] title {"text":"2","color":"gold"}
execute if score #taratara_gaming_time_401 tara_score1_401 matches 40 at @a[scores={playing_000=401}] run playsound minecraft:block.note_block.bit master @a[scores={playing_000=401}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 60 run title @a[scores={playing_000=401}] title {"text":"1","color":"gold"}
execute if score #taratara_gaming_time_401 tara_score1_401 matches 60 at @a[scores={playing_000=401}] run playsound minecraft:block.note_block.bit master @a[scores={playing_000=401}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run title @a[scores={playing_000=401}] title {"text":"START","color":"gold"}
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 as @a[scores={playing_000=401}] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 2
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run function suiryu_taratara_401:fall_cod
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run summon minecraft:cod 4000 55 100 {Air: 120, DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_falling_401"], Health: 0.1f, ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run bossbar set minecraft:taratara_fever_401 color white
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run bossbar set minecraft:taratara_fever_401 name [{"text":"F","color":"gray","bold":true,"italic":false},{"text":"E","color":"gray","bold":true,"italic":false},{"text":"V","color":"gray","bold":true,"italic":false},{"text":"E","color":"gray","bold":true,"italic":false},{"text":"R","color":"gray","bold":true,"italic":false}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run bossbar set minecraft:taratara_fever_401 players @a[scores={playing_000=401}]
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run bossbar set minecraft:taratara_fever_401 value 0
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 run bossbar set minecraft:taratara_fever_401 visible true
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 if score #taratara_select_trident_401 tara_score1_401 matches 4 store result bossbar minecraft:taratara_fever_401 value run scoreboard players set #taratara_fever0_401 tara_score1_401 300
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 if score #taratara_select_trident_401 tara_score1_401 matches 13 store result bossbar minecraft:taratara_fever_401 value run scoreboard players set #taratara_fever0_401 tara_score1_401 600
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80 if score #taratara_start_bonus_fever_401 tara_score1_401 matches 1 store result bossbar minecraft:taratara_fever_401 value run scoreboard players set #taratara_fever0_401 tara_score1_401 600
