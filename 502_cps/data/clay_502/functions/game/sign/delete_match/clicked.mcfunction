execute store success score # num_502 run tag @s add delete_502
execute if score # num_502 matches 0 run tag @s remove delete_502

function clay_502:game/sign/delete_match/restore
execute if score # num_502 <= #delete num_502 run tag @e[sort=nearest,tag=match_admin_502,limit=1,distance=..64] add delete_502

tag @s remove delete_match_502