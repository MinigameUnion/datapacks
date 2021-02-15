#> inv_501:exchange
# @within
#   bullet_501:**
#   gun_501:**
#   item_501:**
#   player_501:**

function inv_000:get

execute store result score #loop num_501 if data storage inv_000:api Inventory[]
function inv_501:exchange/loop

function inv_000:restore