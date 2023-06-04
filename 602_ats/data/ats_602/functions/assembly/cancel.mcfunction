execute if score $602 a_602 matches 1 run tellraw @a[scores={playing_000=602}] [{"text":"[INFO]","color":"aqua","bold":true},{"text":"アニマル塔戦闘のゲームがキャンセルされました。","color":"white"}]
execute if score $602 a_602 matches 3.. run tellraw @a[scores={playing_000=602}] [{"text":"[INFO]","color":"aqua","bold":true},{"text":"アニマル塔戦闘の強制終了が行われました。","color":"red"}]
schedule clear ats_602:mem/main
function ats_602:reset/main