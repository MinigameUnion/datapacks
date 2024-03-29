execute store result score #CARTRIDGE num_501 run data get storage gun_501:temp tag.gun.chamber.tag.ammo.cartridge
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.cartridge run scoreboard players set #CARTRIDGE num_501 -1

execute if score #CARTRIDGE num_501 matches 0 if data storage gun_501:temp tag.gun{ads:1b} anchored eyes run particle item gold_block ^-0.25 ^-0.15 ^1.25 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal
execute if score #CARTRIDGE num_501 matches 0 if data storage gun_501:temp tag.gun{ads:0b} anchored eyes run particle item gold_block ^-0.5 ^-0.5 ^0.5 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal
execute if score #CARTRIDGE num_501 matches 1 if data storage gun_501:temp tag.gun{ads:1b} anchored eyes run particle item anvil ^-0.25 ^-0.15 ^1.25 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal
execute if score #CARTRIDGE num_501 matches 1 if data storage gun_501:temp tag.gun{ads:0b} anchored eyes run particle item anvil ^-0.5 ^-0.5 ^0.5 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal
execute if score #CARTRIDGE num_501 matches 2 if data storage gun_501:temp tag.gun{ads:1b} anchored eyes run particle item red_wool ^-0.25 ^-0.15 ^1.25 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal
execute if score #CARTRIDGE num_501 matches 2 if data storage gun_501:temp tag.gun{ads:0b} anchored eyes run particle item red_wool ^-0.5 ^-0.5 ^0.5 ^-100000000000000000000000000000000000 ^ ^ 0.0000000000000000000000000000000000025 0 normal

execute if data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run data remove storage gun_501:temp tag.gun.chamber.tag
execute unless data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run function gun_501:chamber/reload