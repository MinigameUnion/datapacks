execute unless data storage ats_602:main generated run function ats_602:init/gen/pos_abs
execute if data storage ats_602:main generated run tellraw @s [{"text":"[ATS-M] ","color":"aqua"},{"text":"一度ミニゲームが生成されている可能性があります。エラーを回避する場合はats_602:mainのgeneratedを空にしてください。","color":"red"}]
