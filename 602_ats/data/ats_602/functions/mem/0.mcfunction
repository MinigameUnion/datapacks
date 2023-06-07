tellraw @a[scores={playing_000=602}] [{"text":"[INFO]","color":"aqua","bold":true},{"text":"アニマル塔戦闘、参加締め切りとなります。","color":"white"}]
execute as @a[x=6016,y=0,z=16,dx=32,dy=255,dz=32] if entity @s[tag=join_team_602] run function ats_602:mem/pass

fill 6030 80 15 6033 80 15 minecraft:nether_brick_fence[east=true,west=true]
fill 6029 81 15 6034 82 15 minecraft:barrier

scoreboard players set $602 a_602 2
execute if score $602 gamemode_602 matches 1 run function ats_602:block_gen/state_2/grass/pre_set
execute if score $602 gamemode_602 matches 2..3 run function ats_602:block_gen/state_2/main
