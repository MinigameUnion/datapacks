#> inv_000:restore/loot
# @within
#   function inv_000:restore

data modify block 0 0 0 Items set from storage inv_000:temp Inventory[0]
loot replace entity @s container.0 27 mine 0 0 0 air{dynamic:1b}

data modify block 0 0 0 Items set from storage inv_000:temp Inventory[1]
loot replace entity @s container.27 9 mine 0 0 0 air{dynamic:1b}

data modify block 0 0 0 Items set from storage inv_000:temp Inventory[2]
loot replace entity @s armor.feet 4 mine 0 0 0 air{dynamic:1b}

data modify block 0 0 0 Items set from storage inv_000:temp Inventory[3]
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{dynamic:1b}

data remove block 0 0 0 Items