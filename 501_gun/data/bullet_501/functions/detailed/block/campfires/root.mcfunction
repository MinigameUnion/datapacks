#> bullet_501:detailed/block/campfires/root
#
# Generated by MCF-Utility
#
# @within function bullet_501:detailed/block/root

execute if score #facing property_501 matches 1..2 run function bullet_501:detailed/block/campfires/east
execute if score #facing property_501 matches 3..4 run function bullet_501:detailed/block/campfires/south