scoreboard players set #taratara_gaming_time_401 tara_score1_401 81
scoreboard players set #RANGE num_000 100
function tool_000:random

summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_bonus_item_401"]}
spreadplayers 4000 100 1 18 false @e[type=armor_stand,tag=taratara_bonus_item_401]

#タラ　スコア+3000
execute if score #RANDOM num_000 matches 1..29 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:cod", Count: 1b, tag: {taratara_bonus_item_401: 1}}}

#海洋の矢
execute if score #RANDOM num_000 matches 55..62 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 1b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 48..54 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 2b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 42..47 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 4b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 37..41 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 8b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 33..36 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 16b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 31..32 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 32b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}
execute if score #RANDOM num_000 matches 30 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:tipped_arrow", Count: 64b, tag: {display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6b, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879}}}

#木刀
execute if score #RANDOM num_000 matches 63..78 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:wooden_sword", Count: 1b, tag: {display: {Name: '{"text":"木刀","color":"gold","italic":false}'}, Enchantments: [{id: "minecraft:sweeping", lvl: 1s}]}}}
execute if score #RANDOM num_000 matches 79..83 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:wooden_sword", Count: 1b, tag: {display: {Name: '{"text":"木刀","color":"gold","italic":false}'}, Enchantments: [{id: "minecraft:sweeping", lvl: 5s}, {id: "minecraft:mending", lvl: 1s}]}}}

#ダイヤモンド　全てのタラを倒す
execute if score #RANDOM num_000 matches 84..93 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:diamond", Count: 1b, tag: {taratara_bonus_item_401: 2}}}

#タラスボウ
execute if score #RANDOM num_000 matches 94..96 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:crossbow", Count: 1b, tag: {CustomModelData: 4001, display: {Name: '{"text":"タラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 1, Operation: 1, UUID: [I; 0, 401, 202009, 211035], Slot: "mainhand"}]}}}
execute if score #RANDOM num_000 matches 97 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:crossbow", Count: 1b, tag: {CustomModelData: 4001, display: {Name: '{"text":"タラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}, {id: "minecraft:piercing", lvl: 1s}, {id: "minecraft:multishot", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 1, Operation: 1, UUID: [I; 0, 401, 202009, 211033], Slot: "mainhand"}]}}}

#タライデント
execute if score #RANDOM num_000 matches 98..99 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:trident", Count: 1b, tag: {display: {Name: '{"text":"タライデント","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:loyalty", lvl: 3s}]}}}

#ネザースター　フィーバーゲージMAX
execute if score #RANDOM num_000 matches 0 as @e[type=armor_stand,tag=taratara_bonus_item_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:item ~ 50 ~ {Age: 600, Item: {id: "minecraft:nether_star", Count: 1b, tag: {taratara_bonus_item_401: 3}}}




kill @e[type=armor_stand,tag=taratara_bonus_item_401]
