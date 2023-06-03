scoreboard players operation $o_0_602 a_602 *= $-1_602 a_602
execute unless score $602 a_602 matches 1.. if score $o_0_602 a_602 matches -1 run function ats_602:sign/option/0/on
execute unless score $602 a_602 matches 1.. if score $o_0_602 a_602 matches 1 run function ats_602:sign/option/0/off
execute if score $602 a_602 matches 1.. run function ats_602:sign/error