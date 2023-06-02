tag @s add initowner_602
teleport @s ~-10 ~ ~-10
tellraw @s [{"text":"[ATS-M] ","color":"aqua"},{"text":"元の座標: ","color":"yellow"},{"storage":"ats_602:main","nbt":"pre_pos","color":"gold"}]
data remove storage ats_602:main pre_pos

schedule function ats_602:init/gen/602_pos 10t
schedule function ats_602:init/gen/post_gen 20t