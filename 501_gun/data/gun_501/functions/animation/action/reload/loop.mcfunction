scoreboard players set #RELOAD num_501 1
execute if data storage gun_501:temp tag.gun.mag.mag{Count:0b} if data storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo run function gun_501:animation/action/reload/item/check
execute if score #RELOAD num_501 matches 1 run data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.reload[1]
execute if score #RELOAD num_501 matches -1 run function gun_501:animation/action/reload/finish