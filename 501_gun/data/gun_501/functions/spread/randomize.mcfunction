scoreboard players operation #RANGE num_000 = #spreadC spread_501

function tool_000:random
scoreboard players operation #RANDOM num_000 -= #spreadC/2 spread_501
execute store result score #tmpX spread_501 run scoreboard players operation #vexX spread_501 = #RANDOM num_000
function tool_000:random
scoreboard players operation #RANDOM num_000 -= #spreadC/2 spread_501
execute store result score #tmpY spread_501 run scoreboard players operation #vexY spread_501 = #RANDOM num_000

# (x^2+y^2) > r^2
execute store result score #distance spread_501 run scoreboard players operation #tmpX spread_501 *= #vexX spread_501
scoreboard players operation #tmpY spread_501 *= #vexY spread_501

scoreboard players operation #distance spread_501 += #tmpY spread_501

execute if score #distance spread_501 > #r^2 spread_501 run function gun_501:spread/randomize