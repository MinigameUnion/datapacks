#> utility_001:array_util/api/move
#
# 配列をキャッシュへ移動します。
#
# @public
# @input
#   storage utility_001:array_util
#       Array: list(any)
#           操作する配列データ
#   score $X array_input_001
#       目的の要素のindex
# @output
#   storage utility_001:array_util
#       Array: list(any)
#           Array[-1]に目的の要素が存在
#       Cache: list(any)
#           移動されたデータ

execute store result score #arrayX utility_001 if data storage utility_001:array_util Array[]
scoreboard players remove #arrayX utility_001 1
scoreboard players operation #arrayX utility_001 -= $X array_input_001
execute if score #arrayX utility_001 matches 1.. run function utility_001:array_util/core/move