#> build_003:fill/start
### Initial setting of unit building
# @public
# @input
#   storage build_003: fill:{pos1:[<x1>,<y1>,<z1>],pos1:[<x2>,<y2>,<z2>],limit:<limit in 1tick>}
#   /data modify storage build_003: fill set value {pos1:[-69.5d,12.5d,-59.5d],pos2:[86.5d,69.5d,21.5d],limit:10}
# @output
#   block light

#> Storage
# @within build_003:fill/*
    #define storage build_003: For build_003

#> Score holder and Tags
# @within build_003:fill/*
    #define score_holder #fill.limit_003
    #define tag fill.marker_003

#> Scoreboard
# @within build_003:fill/*
    scoreboard objectives add _003 dummy
    scoreboard objectives add toggle_003 dummy
    scoreboard objectives add x_003 dummy
    scoreboard objectives add y_003 dummy
    scoreboard objectives add z_003 dummy
    scoreboard objectives add a_003 dummy
    scoreboard objectives add b_003 dummy

## Summon a marker
    execute summon marker run function build_003:fill/set_marker

## Start loop
    function build_003:fill/loop_tick