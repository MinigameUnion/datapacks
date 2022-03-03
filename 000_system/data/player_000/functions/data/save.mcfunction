#> player_000:data/save
# @within
#   function player_000:**
#   function playdata_000:**

data modify storage temp_000:playdata player.uuid append from entity @s Item.tag.SkullOwner.Id
data modify storage temp_000:playdata player.name append from entity @s Item.tag.SkullOwner.Name
data modify storage temp_000:playdata player.raw append from entity @s Item.tag