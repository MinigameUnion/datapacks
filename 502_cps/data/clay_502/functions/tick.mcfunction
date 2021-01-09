execute at @e[type=slime,tag=hologram_sandbag_502] run tag @a[distance=..10,scores={playing_000=502}] add hologram_operator_001
execute as @e[type=item,tag=clay_502,nbt={OnGround:1b}] at @s run function clay_502:clay/delete
tag @e[tag=target_plate_502,tag=hit_502,tag=ticking_502] remove target_501

execute as @e[tag=match_admin_502] at @s run function clay_502:game/tick

#execute as @e[type=slime,tag=hologram_sandbag_502] if data entity @s {OnGround:1b} run say OnGround!
execute as @e[type=slime,tag=hologram_sandbag_502] run data modify entity @s OnGround set value 0b

stopsound @a[scores={playing_000=502},tag=hologram_operator_001] player entity.player.attack.crit
stopsound @a[scores={playing_000=502},tag=hologram_operator_001] player entity.player.attack.knockback
stopsound @a[scores={playing_000=502},tag=hologram_operator_001] player entity.player.attack.strong
stopsound @a[scores={playing_000=502},tag=hologram_operator_001] player entity.player.attack.weak
stopsound @a[scores={playing_000=502},tag=hologram_operator_001] player entity.player.attack.nodamage