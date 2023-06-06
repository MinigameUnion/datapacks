#> ms_801:game/super_check
# すごいハサミ 使用チェック
# OKなら tag: SuperOK_801 つけて返す
# @internal

# 有料
execute unless score $SuperCount General_801 matches 1.. if score @s coin_000 >= $SuperCost General_801 run tag @s add SuperOK_801
execute if entity @s[tag=SuperOK_801] run scoreboard players operation @s remove_coin_000 += $SuperCost General_801
execute if entity @s[tag=SuperOK_801] run function player_000:remove_coin
execute if entity @s[tag=SuperOK_801] run scoreboard players operation $SuperCost General_801 += $SuperCost General_801
execute if entity @s[tag=SuperOK_801] run scoreboard players operation $SuperCost General_801 < #coin max_000

# 無料
execute if score $SuperCount General_801 matches 1.. run tag @s add SuperOK_801
execute if score $SuperCount General_801 matches 1.. run scoreboard players remove $SuperCount General_801 1