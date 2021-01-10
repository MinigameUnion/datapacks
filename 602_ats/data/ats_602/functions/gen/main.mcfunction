scoreboard players set #RANGE num_000 6
function tool_000:random
scoreboard players operation $gen602 a1_602 = #RANDOM num_000

execute if score $gen602 a1_602 matches 0 run function ats_602:gen/0
execute if score $gen602 a1_602 matches 1 run function ats_602:gen/1
execute if score $gen602 a1_602 matches 2 run function ats_602:gen/2
execute if score $gen602 a1_602 matches 3 run function ats_602:gen/3
execute if score $gen602 a1_602 matches 4 run function ats_602:gen/4
execute if score $gen602 a1_602 matches 5 run function ats_602:gen/5