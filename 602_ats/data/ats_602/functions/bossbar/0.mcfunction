bossbar set score_602 color yellow
bossbar set score_602 name [{"text":"Score : ","color":"gold"},{"score":{"name":"$602","objective":"score_602"}},{"text":" / "},{"text":"残りターン : ","color":"aqua"},{"score":{"name":"$602","objective":"e_602"}}]
schedule function ats_602:bossbar/1 2t append