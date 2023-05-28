#declare objective playing_000 参加ゲームID
#declare objective num_000
#declare storage ats_602:main
#declare storage ats_602:item
#declare storage ats_602:text
#declare storage ats_602:unit
#declare storage ats_602:error

#declare score_holder $602
#declare score_holder $-1_602 a_602
#declare score_holder $gen602
#declare score_holder $timer_602 a_602

#declare score_holder $gm1_mini_602 score_602
#declare score_holder $gm2_mini_602 score_602

#declare score_holder $ope_A_602 a_602= Operation //
#declare score_holder $ope_B_602 a_602= Operation //
#declare score_holder $ope_C_602 a / a1 / a2_602= Operation

#declare bossbar score_602 スコア表示
#declare bossbar timer_602 タイマー

#declare team GreenTeam 通常のチーム
#declare team RedTeam 対戦用チーム
#declare team BlueTeam 〃


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

scoreboard objectives add chaos_602 dummy {"text":"chaos_602","color":"dark_blue"}
scoreboard objectives add gamemode_602 dummy {"text":"gamemode_602","color":"light_purple"}
scoreboard objectives add click_602 trigger {"text":"click_602","color":"light_purple"}

scoreboard players set $602 chaos_602 0
scoreboard players set $-1_602 a_602 -1

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

bossbar add minecraft:score_602 [{"text":"placeholder"}]

function ats_602:reset/main