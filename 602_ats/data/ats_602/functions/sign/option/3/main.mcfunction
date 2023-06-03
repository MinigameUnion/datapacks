scoreboard players operation $o_3_602 a_602 *= $-1_602 a_602
execute unless score $602 a_602 matches 1.. if score $o_3_602 a_602 matches -1 run function ats_602:sign/option/3/on
execute unless score $602 a_602 matches 1.. if score $o_3_602 a_602 matches 1 run function ats_602:sign/option/3/off
execute if score $602 a_602 matches 1.. run function ats_602:sign/error