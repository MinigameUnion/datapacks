#> player_000:data/create
# @within
#   function player_000:**
#   function playdata_000:**

execute store result score @s id_000 run scoreboard players add #SYSTEM id_000 1
scoreboard players set @s coin_000 0
loot replace block 0 0 0 container.0 loot player_000:storage
execute store result block 0 0 0 Items[0].tag.000.id int 1 run scoreboard players get @s id_000
function player_000:data/summon