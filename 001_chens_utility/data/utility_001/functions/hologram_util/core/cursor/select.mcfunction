#> utility_001:hologram_util/core/cursor/select
# @internal

execute if score @s hologram_id_001 = @s hologram_id_001 run function #minecraft:handler/001_hologram.select
advancement revoke @s only utility_001:hologram_util/cursor.select