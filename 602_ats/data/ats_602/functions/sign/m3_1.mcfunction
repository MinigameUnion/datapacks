scoreboard players set @s remove_coin_000 500
execute if entity @s[scores={coin_000=500..}] run scoreboard players set $602 chaos_602 1
execute if entity @s[scores={coin_000=500..}] run tellraw @s [{"text":"[祝] ","color":"yellow"},{"text":"カオスモード","color":"light_purple","bold": true},{"text": "開放！エンジョイ！","color":"white"}]
execute if entity @s[scores={coin_000=500..}] run function ats_602:tada/0

execute if entity @s[scores={coin_000=..499}] run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 1.0 1.0
execute unless score $602 a_602 matches 1.. run function ats_602:set/sign0
execute unless score $602 a_602 matches 1.. run function ats_602:reset/main