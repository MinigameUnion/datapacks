tag @e[type=marker,tag=Marker_801,tag=!Sheared_801,tag=!Mine_801,limit=1,sort=random] add Mine_801
scoreboard players remove $Tmp General_801 1
execute if score $Tmp General_801 matches 1.. run function ms_801:open/mine_randomize