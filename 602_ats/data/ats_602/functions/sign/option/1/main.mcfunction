scoreboard players operation $o_1_602 a_602 *= $-1_602 a_602
execute unless score $602 a_602 matches 1.. if score $o_1_602 a_602 matches -1 run function ats_602:sign/option/1/on
execute unless score $602 a_602 matches 1.. if score $o_1_602 a_602 matches 1 run function ats_602:sign/option/1/off
execute if score $602 a_602 matches 1.. run function ats_602:sign/error