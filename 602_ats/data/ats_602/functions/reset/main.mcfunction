kill @e[tag=tile_602]
execute as @e[type=minecraft:item] if data entity @s item.tag.UnitItem602 run kill @s

function ats_602:reset/blocks

execute as @a[tag=join_game_602] run function ats_602:result/mini_ope/starter

function ats_602:reset/bossbars
execute as @a[scores={playing_000=602}] run function ats_602:reset/players
function ats_602:reset/teams
function ats_602:reset/scores
function ats_602:reset/storages
