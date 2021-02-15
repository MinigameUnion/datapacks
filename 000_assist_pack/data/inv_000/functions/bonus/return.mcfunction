#> inv_000:bonus/return
# @api

#>
# @within
#   function inv_000:bonus/**
#   function player_000:**
#declare storage player_000:temp

setblock 1 0 0 shulker_box{Lock:"?"}
#scoreboard players operation #ID num_000 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify block 1 0 0 Items set from entity @s Item.tag.000.BonusItems[-1]
data modify block 1 0 0 Items set from entity @s EnderItems

function inv_000:get
execute store result storage player_000:temp playing_000 int 1 run scoreboard players get @s playing_000
execute store result score # num_000 if data storage inv_000:api Inventory[]
function inv_000:bonus/return/loop

#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.000.BonusItems[-1] set from block 1 0 0 Items
loot replace entity @s enderchest.0 mine 1 0 0 air{dynamic:1b}
setblock 1 0 0 air

function inv_000:restore

#function inv_000:ender/get
#scoreboard players operation #ID num_000 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.000.EnderItems set from storage inv_000:api EnderItems