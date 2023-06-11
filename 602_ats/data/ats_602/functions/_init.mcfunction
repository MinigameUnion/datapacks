#declare objective playing_000 参加ゲームID
#declare objective num_000
#declare storage ats_602:main
#declare storage ats_602:item
#declare storage ats_602:text
#declare storage ats_602:unit
#declare storage ats_602:error

#declare score_holder $602
#declare score_holder $2_602 a_602
#declare score_holder $-1_602 a_602
#declare score_holder $10_602 a_602
#declare score_holder $12_602 a_602
#declare score_holder $gen602
#declare score_holder $timer_602 a_602= score / a1 , 2 _602= second
#declare score_holder $pause_602 a_602= pause flag

#declare score_holder $gm1_mini_602 score_602
#declare score_holder $gm2_mini_602 score_602

#declare score_holder $ope_A_602 a_602= Operation //
#declare score_holder $ope_B_602 a_602= Operation //
#declare score_holder $ope_C_602 a / a1 / a2_602= Operation

#declare score_holder $g_chaos_602 a_602= chaos mode unlocked / a1_602= chaos mode cost

#declare score_holder $o_0_602 a_602= real time unlocked / a1_602= real time cost
#declare score_holder $o_1_602 a_602= blind mode unlocked / a1_602= blind mode cost
#declare score_holder $o_2_602 a_602= no consumption unlocked / a1_602= no consumption cost
#declare score_holder $o_3_602 a_602= quick item unlocked / a1_602= quick item cost
#declare score_holder $o_4_602 a_602= chaooos level / a1_602= chaooos cost memory
#declare score_holder $o_5_602 a_602= wait time / a1_602= wait time cost

#declare score_holder $pid_mismatch_602 Error Check

#declare tag join_team_602
#declare tag join_game_602
#declare tag join_area_602
#declare tag hit_602
#declare tag hit_self_602
#declare tag hit_partner_602
#declare tag skill_changed_602
#declare tag addScore_602

#declare bossbar score_602 スコア表示
#declare bossbar timer_602 タイマー

#declare team GreenTeam 通常のチーム
#declare team RedTeam 対戦用チーム
#declare team BlueTeam 〃



scoreboard objectives remove a_602
scoreboard objectives remove a1_602
scoreboard objectives remove a2_602
scoreboard objectives remove b_602
scoreboard objectives remove c_602
scoreboard objectives remove d_602
scoreboard objectives remove e_602
scoreboard objectives remove e1_602
scoreboard objectives remove e2_602

scoreboard objectives remove z1_602
#scoreboard objectives remove z2_602
#scoreboard objectives remove z3_602

scoreboard objectives remove score_602
scoreboard objectives remove score0_602
scoreboard objectives remove addScore_602
scoreboard objectives remove sneak_602

scoreboard objectives remove mulScore0_602
scoreboard objectives remove mulScore1_602
scoreboard objectives remove mulScore2_602

scoreboard objectives remove gamemode_602
scoreboard objectives remove click_602



scoreboard objectives add a_602 dummy {"text":"a_602","color":"aqua"}
scoreboard objectives add a1_602 dummy {"text":"a1_602","color":"aqua"}
scoreboard objectives add a2_602 dummy {"text":"a2_602","color":"aqua"}
scoreboard objectives add b_602 dummy {"text":"b_602","color":"aqua"}
scoreboard objectives add c_602 dummy {"text":"c_602","color":"aqua"}
scoreboard objectives add d_602 dummy {"text":"d_602","color":"aqua"}
scoreboard objectives add e_602 dummy {"text":"e_602","color":"aqua"}
scoreboard objectives add e1_602 dummy {"text":"e1_602","color":"aqua"}
scoreboard objectives add e2_602 dummy {"text":"e2_602","color":"aqua"}

scoreboard objectives add z1_602 dummy {"text":"z1_602","color":"blue"}
#scoreboard objectives add z2_602 dummy {"text":"z2_602","color":"blue"}
#scoreboard objectives add z3_602 dummy {"text":"z3_602","color":"blue"}

scoreboard objectives add score_602 dummy {"text":"score_602","color":"gold"}
scoreboard objectives add score0_602 dummy {"text":"score0_602","color":"gold"}
scoreboard objectives add addScore_602 dummy {"text":"addScore_602","color":"gold"}
scoreboard objectives add sneak_602 dummy {"text":"sneak_602","color":"gold"}

scoreboard objectives add mulScore0_602 dummy {"text":"mulScore0_602","color":"aqua"}
scoreboard objectives add mulScore1_602 dummy {"text":"mulScore1_602","color":"aqua"}
scoreboard objectives add mulScore2_602 dummy {"text":"mulScore2_602","color":"aqua"}

scoreboard objectives add gamemode_602 dummy {"text":"gamemode_602","color":"light_purple"}
scoreboard objectives add click_602 trigger {"text":"click_602","color":"light_purple"}

scoreboard players set $g_chaos_602 a1_602 300
scoreboard players set $o_0_602 a1_602 30
scoreboard players set $o_1_602 a1_602 30
scoreboard players set $o_2_602 a1_602 500
scoreboard players set $o_3_602 a1_602 300
scoreboard players set $o_4_602 a1_602 0
scoreboard players set $o_5_602 a1_602 300

scoreboard objectives add vs_602 dummy {"text":"vs_602","color":"light_purple"}
scoreboard objectives add pId_602 dummy {"text":"pId_602","color":"light_purple"}

team add GreenTeam {"text":"GreenTeam","color":"green"}
team add RedTeam {"text":"RedTeam","color":"red"}
team add BlueTeam {"text":"BlueTeam","color":"blue"}

team modify GreenTeam friendlyFire false
team modify RedTeam friendlyFire false
team modify BlueTeam friendlyFire false

team modify GreenTeam collisionRule never
team modify RedTeam collisionRule never
team modify BlueTeam collisionRule never

team modify GreenTeam color green
team modify RedTeam color red
team modify BlueTeam color blue

data modify storage ats_602:main ChaosOptions set value {}
data modify storage ats_602:main ChaosOptions.Cost set value {L1:100,L2:300,L3:600}

bossbar add minecraft:score_602 [{"text":"placeholder"}]
bossbar add minecraft:timer_602 [{"text":"placeholder"}]

function ats_602:block_gen/sign/0
function ats_602:block_gen/sign/1
function ats_602:block_gen/sign/2

function ats_602:reset/main