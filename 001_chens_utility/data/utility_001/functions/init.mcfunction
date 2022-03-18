#> utility_001:init
# @within tag/function
#   minecraft:load


#> CoreScoreboard
# @internal
    scoreboard objectives add utility_001 dummy {"text":"(001)内部処理用"}


#> **ArrayUtility**
#
# 配列Inputです。要求NBT等は説明markdownを参照してください。
#
# ---
# @public
    #declare storage utility_001:array_util
#> **ArrayUtility**
#
# Inputです。要求スコアホルダー等は説明markdownを参照してください。
#
# ---
# @public
    scoreboard objectives add array_input_001 dummy {"text":"(001)ArrayUtility - 入力"}

execute unless data storage utility_001:array_util Install run data merge storage utility_001:array_util {Array:[],Install:1b}


#> **HologramUtility**
#
# TextGroup[] テキストデータを入力してください。 詳しい操作は説明markdownを参照してください。
#
# ---
# @public
    #declare storage utility_001:hologram_util
#> **HologramUtility**
#
# ホログラムを操作可能なプレイヤーに付与してくだい。
#
# ---
# @public
    #declare tag hologram_operator_001
#> **HologramUtility**
#
# ホログラムが殴られた際に選択されているホログラムIDが記録されています。
#
# ---
# @public
    scoreboard objectives add hologram_id_001 dummy {"text":"(001)HologramUtility - ID"}

execute unless data storage utility_001:hologram_util Install run data merge storage utility_001:hologram_util {TextGroup:[],Install:1b}
execute unless entity 0-0-1-1-0 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 65536, 0]}


#> **NumberUtility**
#
# StorageInput,Outputです。要求NBT等は説明markdownを参照してください。
#
# ---
# @public
    #declare storage utility_001:number_util
#> **NumberUtility**
#
# Inputです。要求スコアホルダー等は説明markdownを参照してください。
#
# ---
# @public
    scoreboard objectives add number_001 dummy {"text":"(001)NumberUtility - 入力"}

execute unless data storage utility_001:number_util Install run data merge storage utility_001:number_util {Array:[],Install:1b}


#> **ShapesUtility**
#
# StorageInputです。要求NBT等は説明markdownを参照してください。
#
# ---
# @public
    #declare storage utility_001:shapes_util
#> **ShapesUtility**
#
# Inputです。要求スコアホルダー等は説明markdownを参照してください。
#
# ---
# @public
    scoreboard objectives add shape_input_001 dummy {"text":"(001)ShapesUtility - 入力"}
#> **ShapesUtility**
#
# Entityの出力順が記録されています。
#
# 0-indexed
#
# ---
# @public
    scoreboard objectives add shape_summon_001 dummy {"text":"(001)ShapesUtility - 召喚順"}
#> **ShapesUtility**
#
# 出力IDが記録されています。
#
# 同じ回に出力されたものは同じIDを保持しています。
#
# ---
# @public
    scoreboard objectives add shape_run_id_001 dummy {"text":"(001)ShapesUtility - 実行ID"}

execute unless data storage utility_001:shapes_util Install run data merge storage utility_001:shapes_util {InputPos:[],InputRotation:[],Install:1b}
execute unless entity 0-0-1-0-0 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 0]}
execute unless entity 0-0-1-0-1 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 1]}
execute unless entity 0-0-1-0-2 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 2]}
execute unless entity 0-0-1-0-3 run summon area_effect_cloud 0.0 0.0 0.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 3]}
execute unless entity 0-0-1-0-4 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 4]}
execute unless entity 0-0-1-0-5 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 5]}
execute unless entity 0-0-1-0-6 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 6]}
execute unless entity 0-0-1-0-7 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 7]}
execute unless entity 0-0-1-0-8 run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,UUID:[I; 0, 1, 0, 8]}