#> player_000:data/check
# @within
#   function player_000:**
#   function playdata_000:**

#既存データ削除
scoreboard players operation #ID num_000 = @s id_000
execute if score @s id_000 matches 0.. as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run kill @s
scoreboard players reset @s

#playdata内に自分のデータがあるかcheck
loot replace block 0 0 0 container.0 loot player_000:storage
data modify storage temp_000:compare list set from storage temp_000:loading player.uuid
data remove storage temp_000:compare save[]
data modify storage temp_000:compare string set from block 0 0 0 Items[0].tag.SkullOwner.Id
function player_000:data/compare/uuid
data remove storage temp_000:loading player.uuid[-1]
data modify storage temp_000:loading player.uuid append from storage temp_000:compare save[]

#生成/読込
execute unless data storage temp_000:compare list[0] run function player_000:data/create
execute if data storage temp_000:compare list[0] run function player_000:data/load