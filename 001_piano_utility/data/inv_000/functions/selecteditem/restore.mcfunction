#> inv_000:selecteditem/restore
# @api

data remove block 0 0 0 Items
data modify block 0 0 0 Items append from storage inv_000:api SelectedItem
loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{dynamic:1b}
data remove block 0 0 0 Items