execute unless data entity @s SelectedItem.tag.gun.chamber.tag.ammo.bullet run playsound minecraft:ui.button.click master @a ~ ~1 ~ 0.5 1.5 0
execute if data entity @s SelectedItem.tag.gun.chamber.tag.ammo.bullet unless predicate player_000:is_sprinting run function #gun_501:shot
advancement revoke @s only gun_501:clicked