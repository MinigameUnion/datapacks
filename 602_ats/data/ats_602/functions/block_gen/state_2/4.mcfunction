scoreboard players add $gen602 a_602 1

execute if score $gen602 a_602 matches 1 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 1 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/1
execute if score $gen602 a_602 matches 1 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/1
execute if score $gen602 a_602 matches 2 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 2 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/1
execute if score $gen602 a_602 matches 2 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/1


execute if score $gen602 a_602 matches 3 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 3 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/2
execute if score $gen602 a_602 matches 3 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/2
execute if score $gen602 a_602 matches 4 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 4 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/2
execute if score $gen602 a_602 matches 4 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/2

execute if score $gen602 a_602 matches 5 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 5 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/3
execute if score $gen602 a_602 matches 5 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/3
execute if score $gen602 a_602 matches 6 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 6 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/3
execute if score $gen602 a_602 matches 6 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/3

execute if score $gen602 a_602 matches 7 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 7 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/4
execute if score $gen602 a_602 matches 7 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/4
execute if score $gen602 a_602 matches 8 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 8 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/4
execute if score $gen602 a_602 matches 8 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/4

execute if score $gen602 a_602 matches 9 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 9 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/5
execute if score $gen602 a_602 matches 9 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/5
execute if score $gen602 a_602 matches 10 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 10 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/5
execute if score $gen602 a_602 matches 10 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/5

execute if score $gen602 a_602 matches 11 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 11 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/6
execute if score $gen602 a_602 matches 11 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/6
execute if score $gen602 a_602 matches 12 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 12 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/6
execute if score $gen602 a_602 matches 12 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/6

execute if score $gen602 a_602 matches 13 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 13 positioned 6016 64 16 rotated 0 0 run function ats_602:block_gen/state_2/p/7
execute if score $gen602 a_602 matches 13 positioned 6047 64 47 rotated 180 0 run function ats_602:block_gen/state_2/p/7
execute if score $gen602 a_602 matches 14 run function ats_602:block_gen/state_2/r
execute if score $gen602 a_602 matches 14 positioned 6016 64 47 rotated -90 0 run function ats_602:block_gen/state_2/p/7
execute if score $gen602 a_602 matches 14 positioned 6047 64 16 rotated 90 0 run function ats_602:block_gen/state_2/p/7

execute unless score $gen602 a_602 matches 15.. run schedule function ats_602:block_gen/state_2/4 2t append
execute if score $gen602 a_602 matches 15 run schedule function ats_602:block_gen/state_2/f 1s