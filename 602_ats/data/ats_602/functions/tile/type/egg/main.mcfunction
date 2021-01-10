execute if entity @s[scores={z1_602=50..}] run kill @s
execute positioned as @s rotated as @s run teleport @s ~ ~ ~ ~20 ~
scoreboard players add @s z1_602 1
execute if entity @s[scores={z1_602=1}] run tellraw @a[team=602] [{"text":"["},{"text":"タマゴ"},{"text":"] Score: "},{"text":"200 !"}]
execute if entity @s[scores={z1_602=1}] run scoreboard players add $602 score_602 200