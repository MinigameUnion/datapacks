scoreboard players add $602 pId_602 1
execute as @a if score @s pId_602 = $602 pId_602 run tag @s add shooter_602
execute if score $602 a1_602 < $602 pId_602 run scoreboard players set $602 pId_602 0

execute unless entity @a[tag=shooter_602] if entity @a[team=602] run function ats_602:m/0
execute unless entity @a[team=602] run function ats_602:exitr