execute store result score #ADS num_501 run data get storage gun_501:temp tag.gun.ads
execute if predicate player_000:is_sneaking if score #ADS num_501 matches 0 run data modify storage gun_501:temp tag.animation.temp set from storage gun_501:temp tag.animation.ads.list
execute unless predicate player_000:is_sneaking if score #ADS num_501 matches 1 run data modify storage gun_501:temp tag.animation.temp set from storage gun_501:temp tag.animation.ads.hip
execute unless predicate player_000:is_sneaking if score #ADS num_501 matches 1 run data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.default
data modify storage gun_501:temp tag.animation.temp append from storage gun_501:temp tag.animation.cocking[]