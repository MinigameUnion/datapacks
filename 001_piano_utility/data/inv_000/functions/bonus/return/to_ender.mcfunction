#> inv_000:bonus/return/to_ender
# @within
#   function inv_000:bonus/return/loop

data modify storage inv_000:api Inventory[0].Slot set value 0b
data remove block 0 0 0 Items
data modify block 0 0 0 Items append from storage inv_000:api Inventory[0]
#↓の前と後でItemsの差を観測し、変化がなければaddしてもう一度insertする
loot insert 1 0 0 mine 0 0 0 air{dynamic:1b}
#極力[0]側に詰めてアイテムをinsertしたいよね