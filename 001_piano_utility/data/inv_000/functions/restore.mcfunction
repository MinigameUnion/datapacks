#> inv_000:restore
# @api

#>
# @within
#   function inv_000:**
#declare storage inv_000:temp

data modify storage inv_000:temp temp set from storage inv_000:api Inventory
data modify storage inv_000:temp Inventory set value [[],[],[],[]]

function inv_000:restore/separation
function inv_000:restore/loot