kill @e[tag=tile_602]

function ats_602:reset/blocks

execute if score $602 gamemode_602 matches 1 run function ats_602:result/mini_ope/1
execute if score $602 gamemode_602 matches 2 run function ats_602:result/mini_ope/2
execute if score $602 gamemode_602 matches 3 run function ats_602:result/mini_ope/3

function ats_602:reset/bossbars
execute as @a[tag=in_602] run function ats_602:reset/players
function ats_602:reset/teams
function ats_602:reset/scores
function ats_602:reset/storages
