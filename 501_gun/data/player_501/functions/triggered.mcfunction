execute unless data entity @s SelectedItem.tag.gun{chamber:1b} run playsound minecraft:ui.button.click master @a ~ ~1 ~ 0.5 1.5 0
execute if data entity @s SelectedItem.tag.gun{chamber:1b} run function #gun_501:shot
advancement revoke @s only gun_501:clicked