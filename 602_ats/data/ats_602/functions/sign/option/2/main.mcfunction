scoreboard players operation $o_2_602 a_602 *= $-1_602 a_602
execute unless score $602 a_602 matches 1.. if score $o_2_602 a_602 matches -1 run function ats_602:sign/option/2/on
execute unless score $602 a_602 matches 1.. if score $o_2_602 a_602 matches 1 run function ats_602:sign/option/2/off
execute if score $602 a_602 matches 1.. run function ats_602:sign/error