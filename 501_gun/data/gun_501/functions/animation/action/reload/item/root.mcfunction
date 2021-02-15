function inv_000:get

data remove storage gun_501:temp offhand
data modify storage gun_501:temp offhand set from storage inv_000:api Inventory[{Slot:-106b}]
data remove storage inv_000:api Inventory[{Slot:-106b}]
data modify storage inv_000:api Inventory prepend from storage gun_501:temp offhand

data modify storage gun_501:temp reload.temp set value []
execute store result score #loop num_501 if data storage inv_000:api Inventory[]
function gun_501:animation/action/reload/item/loop

function inv_000:restore