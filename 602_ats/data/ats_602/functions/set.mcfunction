#declare bossbar minecraft:0_602 スコア表記
#declare bossbar minecraft:1_602 予約
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
#declare score_holder $Ope_A_602 a_602= Operation //
#declare score_holder $Ope_B_602 a_602= Operation //
#declare score_holder $Ope_C_602 a / a1 / a2_602= Operation




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

team add 602 {"text":"602","color":"aqua"}
team modify 602 friendlyFire false

bossbar add minecraft:0_602 [{"text":"Score : "},{"score":{"name":"$602","objective":"score_602"}}]

function ats_602:reset