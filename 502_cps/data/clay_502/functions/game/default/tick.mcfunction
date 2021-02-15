execute if score @s progress_502 matches 5 if entity @a[scores={playing_000=502},tag=ticking_502,tag=playing_502,tag=restart_502] run function clay_502:game/default/restart

execute if score @s progress_502 matches 0 if entity @a[scores={playing_000=502},tag=ticking_502,advancements={clay_502:picked_gun=true},tag=playing_502] run function clay_502:game/default/start

execute if score @s progress_502 matches 1.. if score @s tick_502 matches 0 run function clay_502:game/default/action

execute if entity @s[tag=delete_502] if entity @a[tag=ticking_502,tag=playing_502] run function clay_502:game/default/delete