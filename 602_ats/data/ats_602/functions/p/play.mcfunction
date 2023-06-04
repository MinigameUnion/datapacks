execute if entity @s[tag=shooter_602] run function ats_602:p/shooter

execute if score $602 e_602 matches 1.. if data entity @s SelectedItem.tag.UnitItem602 run title @s actionbar [{"nbt":"SelectedItem.tag.display.Lore[2]","entity":"@s","interpret":true}]
