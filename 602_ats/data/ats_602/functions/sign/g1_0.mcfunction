scoreboard players set @s remove_coin_000 100
execute if entity @s[scores={coin_000=100..}] run loot give @s loot ats_602:say/0
execute if entity @s[scores={coin_000=100..}] run function ats_602:tada/0
execute if entity @s[scores={coin_000=100..}] run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1.0 1.0
execute if entity @s[scores={coin_000=100..}] run particle minecraft:firework ~ ~1.2 ~ 0 0 0 0.15 50
execute if entity @s[scores={coin_000=..99}] run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 1.0 1.0
