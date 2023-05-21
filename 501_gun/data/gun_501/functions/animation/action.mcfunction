execute if score #ACTION num_501 matches 1 if data storage gun_501:temp tag.gun{ads:0b} run function gun_501:animation/action/ads
execute if score #ACTION num_501 matches 1 run function gun_501:animation/action/hip
execute if score #ACTION num_501 matches 2 unless predicate gun_501:action_cancel unless data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run function gun_501:animation/action/cocking/start
execute if score #ACTION num_501 matches 3 run function gun_501:animation/action/cocking/complete
execute if score #ACTION num_501 matches 4 unless predicate gun_501:action_cancel run function gun_501:animation/action/reload/loop
execute if score #ACTION num_501 matches 4 if predicate gun_501:action_cancel run function gun_501:animation/action/reload/finish
execute if score #ACTION num_501 matches 5 run function gun_501:animation/action/reload/load
execute if score #ACTION num_501 matches 6 run data modify storage gun_501:temp tag.gun.reloading set value 0b

execute if score #ACTION num_501 matches 7 run advancement grant @s only gun_501:clicked auto

execute if score #ACTION num_501 matches 8 if predicate player_000:is_sprinting run data modify storage gun_501:temp tag.animation.playing prepend from storage gun_501:temp tag.animation.sprint[0][-1]