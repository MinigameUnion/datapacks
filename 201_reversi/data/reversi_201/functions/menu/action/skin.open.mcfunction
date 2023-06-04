#> reversi_201:menu/action/skin.open
#
#
#
# @within function
#   reversi_201:menu/select
#   reversi_201:menu/action/skin.page.*

execute unless score $SkinMenuPage ReversiData_201 matches ..-1 run scoreboard players set $SkinMenuPage ReversiData_201 -1
scoreboard players operation $SkinMenuPage ReversiData_201 *= #-1 num_000

data modify storage utility_001:hologram_util TextGroup set value []
data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.5f,1.5f],Setting:{CursorCollider:0b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Center"},HologramID:2047,Text:['{"text":"ス","bold":true,"font":"uniform"}','{"text":"キ","bold":true,"font":"uniform"}','{"text":"ン","bold":true,"font":"uniform"}','{"text":"セ","bold":true,"font":"uniform"}','{"text":"レ","bold":true,"font":"uniform"}','{"text":"ク","bold":true,"font":"uniform"}','{"text":"ト","bold":true,"font":"uniform"}']}
data modify storage utility_001:hologram_util TextGroup append value {Offset:[3f,1.85f],Setting:{CursorCollider:1b,TextInterpret:1b,TextAlign:"Center"},HologramID:2048,Text:['{"text":"P","color":"white","font":"uniform"}','{"text":"r","color":"white","font":"uniform"}','{"text":"e","color":"white","font":"uniform"}','{"text":"v","color":"white","font":"uniform"}']}
data modify storage utility_001:hologram_util TextGroup append value {Offset:[4f,1.85f],Setting:{CursorCollider:1b,TextInterpret:1b,TextAlign:"Center"},HologramID:2049,Text:['{"text":"N","color":"white","font":"uniform"}','{"text":"e","color":"white","font":"uniform"}','{"text":"x","color":"white","font":"uniform"}','{"text":"t","color":"white","font":"uniform"}']}

execute if score $SkinMenuPage ReversiData_201 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2050,Text:['{"text":"プ","color":"white","font":"uniform"}','{"text":"レ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,2.50f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2000},Offset:0.25f},{id:"minecraft:white_concrete",Setting:{CMD:2000},Offset:0.25f}]}
execute if score $SkinMenuPage ReversiData_201 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2051,Text:['{"text":"ク","color":"white","font":"uniform"}','{"text":"ラ","color":"white","font":"uniform"}','{"text":"シ","color":"white","font":"uniform"}','{"text":"ッ","color":"white","font":"uniform"}','{"text":"ク","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,3.05f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2001},Offset:0.2f},{id:"minecraft:white_concrete",Setting:{CMD:2001},Offset:0.2f}]}
execute if score $SkinMenuPage ReversiData_201 matches 1 unless data storage reversi_201:data {UnlockSkins:["プレート"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2052,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 if data storage reversi_201:data {UnlockSkins:["プレート"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2052,Text:['{"text":"プ","color":"white","font":"uniform"}','{"text":"レ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}','{"text":"ト","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 if data storage reversi_201:data {UnlockSkins:["プレート"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,3.60f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2002},Offset:0.2f},{id:"minecraft:white_concrete",Setting:{CMD:2002},Offset:0.2f}]}
execute if score $SkinMenuPage ReversiData_201 matches 1 unless data storage reversi_201:data {UnlockSkins:["エンシェント"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2052,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 if data storage reversi_201:data {UnlockSkins:["エンシェント"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2053,Text:['{"text":"ア","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}','{"text":"シ","color":"white","font":"uniform"}','{"text":"エ","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}','{"text":"ト","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 1 if data storage reversi_201:data {UnlockSkins:["エンシェント"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,4.15f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2003},Offset:0.05f},{id:"minecraft:white_concrete",Setting:{CMD:2003},Offset:0.05f}]}

execute if score $SkinMenuPage ReversiData_201 matches 2 unless data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2054,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2054,Text:['{"text":"イ","color":"white","font":"uniform"}','{"text":"リ","color":"white","font":"uniform"}','{"text":"ュ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}','{"text":"ジ","color":"white","font":"uniform"}','{"text":"ョ","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,2.50f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2004},Offset:0.25f},{id:"minecraft:white_concrete",Setting:{CMD:2004},Offset:0.25f}]}
execute if score $SkinMenuPage ReversiData_201 matches 2 unless data storage reversi_201:data {UnlockSkins:["フェイスA"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2055,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスA"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2055,Text:['{"text":"フ","color":"white","font":"uniform"}','{"text":"ェ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ス","color":"white","font":"uniform"}','{"text":"A","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスA"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,3.05f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2005},Offset:0.4f},{id:"minecraft:white_concrete",Setting:{CMD:2005},Offset:0.4f}]}
execute if score $SkinMenuPage ReversiData_201 matches 2 unless data storage reversi_201:data {UnlockSkins:["フェイスB"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2056,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスB"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2056,Text:['{"text":"フ","color":"white","font":"uniform"}','{"text":"ェ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ス","color":"white","font":"uniform"}','{"text":"B","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスB"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,3.60f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2006},Offset:0.4f},{id:"minecraft:white_concrete",Setting:{CMD:2006},Offset:0.4f}]}
execute if score $SkinMenuPage ReversiData_201 matches 2 unless data storage reversi_201:data {UnlockSkins:["フェイスX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2057,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2057,Text:['{"text":"フ","color":"white","font":"uniform"}','{"text":"ェ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ス","color":"white","font":"uniform"}','{"text":"X","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 2 if data storage reversi_201:data {UnlockSkins:["フェイスX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,4.15f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2007},Offset:0.4f},{id:"minecraft:white_concrete",Setting:{CMD:2007},Offset:0.4f}]}

execute if score $SkinMenuPage ReversiData_201 matches 3 unless data storage reversi_201:data {UnlockSkins:["スパイラル"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2058,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["スパイラル"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2058,Text:['{"text":"ス","color":"white","font":"uniform"}','{"text":"パ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ラ","color":"white","font":"uniform"}','{"text":"ル","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["スパイラル"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,2.50f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2008},Offset:0.25f},{id:"minecraft:white_concrete",Setting:{CMD:2008},Offset:0.25f}]}
execute if score $SkinMenuPage ReversiData_201 matches 3 unless data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2059,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2059,Text:['{"text":"ス","color":"white","font":"uniform"}','{"text":"パ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ラ","color":"white","font":"uniform"}','{"text":"ル","color":"white","font":"uniform"}','{"text":"X","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,3.05f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2009},Offset:0.4f},{id:"minecraft:white_concrete",Setting:{CMD:2009},Offset:0.4f}]}
execute if score $SkinMenuPage ReversiData_201 matches 3 unless data storage reversi_201:data {UnlockSkins:["ポーン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2060,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["ポーン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2060,Text:['{"text":"ポ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["ポーン"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,3.60f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2030},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2030},Offset:0f}]}
execute if score $SkinMenuPage ReversiData_201 matches 3 unless data storage reversi_201:data {UnlockSkins:["シュルカー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2061,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["シュルカー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2061,Text:['{"text":"シ","color":"white","font":"uniform"}','{"text":"ュ","color":"white","font":"uniform"}','{"text":"ル","color":"white","font":"uniform"}','{"text":"カ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 3 if data storage reversi_201:data {UnlockSkins:["シュルカー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,4.15f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2060},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2060},Offset:0f}]}

execute if score $SkinMenuPage ReversiData_201 matches 4 unless data storage reversi_201:data {UnlockSkins:["チェスト"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2062,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["チェスト"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,2.50f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2062,Text:['{"text":"チ","color":"white","font":"uniform"}','{"text":"ェ","color":"white","font":"uniform"}','{"text":"ス","color":"white","font":"uniform"}','{"text":"ト","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["チェスト"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,2.50f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2061},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2061},Offset:0f}]}
execute if score $SkinMenuPage ReversiData_201 matches 4 unless data storage reversi_201:data {UnlockSkins:["サップリング"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2063,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["サップリング"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,3.05f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2063,Text:['{"text":"サ","color":"white","font":"uniform"}','{"text":"ッ","color":"white","font":"uniform"}','{"text":"プ","color":"white","font":"uniform"}','{"text":"リ","color":"white","font":"uniform"}','{"text":"ン","color":"white","font":"uniform"}','{"text":"グ","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["サップリング"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,3.05f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2062},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2062},Offset:0f}]}
execute if score $SkinMenuPage ReversiData_201 matches 4 unless data storage reversi_201:data {UnlockSkins:["スパイダー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Right"},HologramID:2064,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["スパイダー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.2f,3.60f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Right"},HologramID:2064,Text:['{"text":"ス","color":"white","font":"uniform"}','{"text":"パ","color":"white","font":"uniform"}','{"text":"イ","color":"white","font":"uniform"}','{"text":"ダ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["スパイダー"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.9f,3.60f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Left"},HologramID:2050,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2063},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2063},Offset:0f}]}
execute if score $SkinMenuPage ReversiData_201 matches 4 unless data storage reversi_201:data {UnlockSkins:["パズルピース"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:0b,TextInterpret:1b,TextAlign:"Left"},HologramID:2065,Text:['{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}','{"text":"?","color":"dark_gray","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["パズルピース"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.8f,4.15f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f,TextAlign:"Left"},HologramID:2065,Text:['{"text":"パ","color":"white","font":"uniform"}','{"text":"ズ","color":"white","font":"uniform"}','{"text":"ル","color":"white","font":"uniform"}','{"text":"ピ","color":"white","font":"uniform"}','{"text":"ー","color":"white","font":"uniform"}','{"text":"ス","color":"white","font":"uniform"}']}
execute if score $SkinMenuPage ReversiData_201 matches 4 if data storage reversi_201:data {UnlockSkins:["パズルピース"]} run data modify storage utility_001:hologram_util TextGroup append value {Offset:[3.1f,4.15f],Setting:{TextSpaceWidth:0.7f,TextAlign:"Right"},HologramID:2051,Text:['ItemIcon()','ItemIcon()'],ItemIcon:[{id:"minecraft:black_concrete",Setting:{CMD:2064},Offset:0f},{id:"minecraft:white_concrete",Setting:{CMD:2064},Offset:0f}]}

kill @e[tag=hologram_001,scores={hologram_id_001=2000..2098},distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[type=armor_stand,tag=hologram.overlay.0_201,distance=..200,x=2069.0,y=40.0,z=21.0]
kill @e[type=armor_stand,tag=hologram.overlay.1_201,distance=..200,x=2069.0,y=40.0,z=21.0]
execute positioned 2072.5 44.0 38.8 rotated 90 0 run function utility_001:hologram_util/api/create