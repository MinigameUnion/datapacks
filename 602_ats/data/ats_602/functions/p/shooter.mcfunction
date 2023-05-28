execute positioned as @s if block ~ 79 ~ minecraft:glass positioned ~ 64.5 ~ rotated as @s rotated ~ 0 run function ats_602:p/line
execute if predicate player_000:is_sneaking run scoreboard players add @s sneak_602 1
execute unless predicate player_000:is_sneaking run scoreboard players reset @s sneak_602

execute if entity @s[scores={sneak_602=30..}] run function ats_602:p/summon/check
