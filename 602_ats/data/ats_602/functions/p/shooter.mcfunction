execute positioned as @s if block ~ 79 ~ minecraft:glass positioned ~ 64.5 ~ rotated as @s rotated ~ 0 run function ats_602:p/line
execute if predicate player_000:is_sneaking run scoreboard players add @s sneak_602 1
execute unless predicate player_000:is_sneaking run scoreboard players reset @s sneak_602

execute if score $602 e_602 matches 1.. unless data entity @s SelectedItem.tag.602 run title @s actionbar [{"text":"あなたのターンです。","bold": true,"color":"green"},{"text":"専用のアイテムを手に持って、ガラスの上でスニークして発射してください。"}]
execute if score $602 e_602 matches 1.. if data entity @s SelectedItem.tag.UnitItem602 run title @s actionbar [{"nbt":"SelectedItem.tag.display.Lore[2]","entity":"@s","interpret":true}]

execute unless score $o_3_602 a_602 matches -1 if entity @s[scores={sneak_602=30..}] positioned as @s run function ats_602:p/summon/check
execute if score $o_3_602 a_602 matches -1 if entity @s[scores={sneak_602=1..}] positioned as @s run function ats_602:p/summon/check
