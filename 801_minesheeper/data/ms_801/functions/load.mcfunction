scoreboard objectives add General_801 dummy
execute unless score $GameInfo General_801 matches -2147483648..2147483647 run function ms_801:load_once