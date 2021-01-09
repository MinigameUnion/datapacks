#> player_000:data/summon
# @within
#   function player_000:**
#   function playdata_000:**

summon item 0.5 1.0 0.5 {Tags:["storage_000","summoning_000"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{}},PickupDelay:-32768s,Age:-32768s}
execute positioned 0.5 1.0 0.5 run scoreboard players operation @e[tag=summoning_000,distance=..0,limit=1] id_000 = @s id_000
execute positioned 0.5 1.0 0.5 run data modify entity @e[tag=summoning_000,distance=..0,limit=1] Item.tag set from block 0 0 0 Items[0].tag
execute positioned 0.5 1.0 0.5 run tag @e[tag=summoning_000,distance=..0,limit=1] remove summoning_000