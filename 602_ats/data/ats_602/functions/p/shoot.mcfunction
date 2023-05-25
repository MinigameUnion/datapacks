execute positioned as @s if block ~ 79 ~ minecraft:glass positioned ~ 64.5 ~ rotated as @s rotated ~ 0 run function ats_602:p/line
execute if predicate player_000:is_sneaking run scoreboard players add @s sneak_602 1
execute unless predicate player_000:is_sneaking run scoreboard players reset @s sneak_602
execute if entity @s[scores={sneak_602=30..}] if data entity @s SelectedItem.tag.602 positioned as @s if block ~ 79 ~ minecraft:glass rotated as @s positioned ~ 64.5 ~ run function ats_602:p/summon/main
execute if entity @s[scores={sneak_602=30..}] positioned as @s unless block ~ 79 ~ minecraft:glass run function ats_602:p/summon/error0
execute if entity @s[scores={sneak_602=30..}] positioned as @s unless data entity @s SelectedItem.tag.602 run function ats_602:p/summon/error1