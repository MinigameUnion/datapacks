scoreboard players add $gen602 a_602 1

execute if score $gen602 a_602 matches 1 run function ats_602:gen/r
execute if score $gen602 a_602 matches 1 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/1

execute if score $gen602 a_602 matches 2 run function ats_602:gen/r
execute if score $gen602 a_602 matches 2 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/2

execute if score $gen602 a_602 matches 3 run function ats_602:gen/r
execute if score $gen602 a_602 matches 3 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/3

execute if score $gen602 a_602 matches 4 run function ats_602:gen/r
execute if score $gen602 a_602 matches 4 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/4

execute if score $gen602 a_602 matches 5 run function ats_602:gen/r
execute if score $gen602 a_602 matches 5 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/5

execute if score $gen602 a_602 matches 6 run function ats_602:gen/r
execute if score $gen602 a_602 matches 6 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/6

execute if score $gen602 a_602 matches 7 run function ats_602:gen/r
execute if score $gen602 a_602 matches 7 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/7

execute if score $gen602 a_602 matches 8 run function ats_602:gen/r
execute if score $gen602 a_602 matches 8 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/1

execute if score $gen602 a_602 matches 9 run function ats_602:gen/r
execute if score $gen602 a_602 matches 9 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/2

execute if score $gen602 a_602 matches 10 run function ats_602:gen/r
execute if score $gen602 a_602 matches 10 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/3

execute if score $gen602 a_602 matches 11 run function ats_602:gen/r
execute if score $gen602 a_602 matches 11 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/4

execute if score $gen602 a_602 matches 12 run function ats_602:gen/r
execute if score $gen602 a_602 matches 12 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/5

execute if score $gen602 a_602 matches 13 run function ats_602:gen/r
execute if score $gen602 a_602 matches 13 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/6

execute if score $gen602 a_602 matches 14 run function ats_602:gen/r
execute if score $gen602 a_602 matches 14 positioned 6047 64 16 rotated 90 0 run function ats_602:gen/p/7

execute if score $gen602 a_602 matches 15 positioned 6016 64 16 rotated 0 0 run function ats_602:gen/p/c3

execute unless score $gen602 a_602 matches 16.. run schedule function ats_602:gen/3 2t append
execute if score $gen602 a_602 matches 16 run schedule function ats_602:gen/f 1s