scoreboard players enable @s click_602
execute if score @s click_602 = @s click_602 run function ats_602:sign/click/main
execute if entity @s[x=6002,y=80,z=7,dx=0,dy=2,dz=1] run function ats_602:leave