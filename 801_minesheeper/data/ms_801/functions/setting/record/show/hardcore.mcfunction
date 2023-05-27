#> ms_801:setting/record/show/hardcore
# 記録表示
# @internal

data merge entity 0-0-321-0-1a {text:'[{"text":"","bold":true},{"text":"ランキング："},{"text":"ハードコア","color":"light_purple"}]'}

execute store result score $Tmp General_801 run data get storage ms_801:record Hardcore[0].Time 0.05
execute store result score $Tmp2 General_801 run data get storage ms_801:record Hardcore[0].Time
scoreboard players operation $Tmp2 General_801 %= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 *= $Tmp4 General_801
execute if score $Tmp2 General_801 matches 0..9 run data modify entity 0-0-321-0-15 text set value '{"translate":"%1$s タイム：%2$s.0%3$s MVP：%4$s","with":[{"text":"1st","color":"gold"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[0].Player"}]}'
execute if score $Tmp2 General_801 matches 10..99 run data modify entity 0-0-321-0-15 text set value '{"translate":"%1$s タイム：%2$s.%3$s MVP：%4$s","with":[{"text":"1st","color":"gold"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[0].Player"}]}'

execute store result score $Tmp General_801 run data get storage ms_801:record Hardcore[1].Time 0.05
execute store result score $Tmp2 General_801 run data get storage ms_801:record Hardcore[1].Time
scoreboard players operation $Tmp2 General_801 %= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 *= $Tmp4 General_801
execute if score $Tmp2 General_801 matches 0..9 run data modify entity 0-0-321-0-16 text set value '{"translate":"%1$s タイム：%2$s.0%3$s MVP：%4$s","with":[{"text":"2nd","color":"gray"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[1].Player"}]}'
execute if score $Tmp2 General_801 matches 10..99 run data modify entity 0-0-321-0-16 text set value '{"translate":"%1$s タイム：%2$s.%3$s MVP：%4$s","with":[{"text":"2nd","color":"gray"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[1].Player"}]}'

execute store result score $Tmp General_801 run data get storage ms_801:record Hardcore[2].Time 0.05
execute store result score $Tmp2 General_801 run data get storage ms_801:record Hardcore[2].Time
scoreboard players operation $Tmp2 General_801 %= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 *= $Tmp4 General_801
execute if score $Tmp2 General_801 matches 0..9 run data modify entity 0-0-321-0-17 text set value '{"translate":"%1$s タイム：%2$s.0%3$s MVP：%4$s","with":[{"text":"3rd","color":"#b54b0d"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[2].Player"}]}'
execute if score $Tmp2 General_801 matches 10..99 run data modify entity 0-0-321-0-17 text set value '{"translate":"%1$s タイム：%2$s.%3$s MVP：%4$s","with":[{"text":"3rd","color":"#b54b0d"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[2].Player"}]}'

execute store result score $Tmp General_801 run data get storage ms_801:record Hardcore[3].Time 0.05
execute store result score $Tmp2 General_801 run data get storage ms_801:record Hardcore[3].Time
scoreboard players operation $Tmp2 General_801 %= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 *= $Tmp4 General_801
execute if score $Tmp2 General_801 matches 0..9 run data modify entity 0-0-321-0-18 text set value '{"translate":"%1$s タイム：%2$s.0%3$s MVP：%4$s","with":[{"text":"4th"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[3].Player"}]}'
execute if score $Tmp2 General_801 matches 10..99 run data modify entity 0-0-321-0-18 text set value '{"translate":"%1$s タイム：%2$s.%3$s MVP：%4$s","with":[{"text":"4th"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[3].Player"}]}'

execute store result score $Tmp General_801 run data get storage ms_801:record Hardcore[4].Time 0.05
execute store result score $Tmp2 General_801 run data get storage ms_801:record Hardcore[4].Time
scoreboard players operation $Tmp2 General_801 %= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 *= $Tmp4 General_801
execute if score $Tmp2 General_801 matches 0..9 run data modify entity 0-0-321-0-19 text set value '{"translate":"%1$s タイム：%2$s.0%3$s MVP：%4$s","with":[{"text":"5th"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[4].Player"}]}'
execute if score $Tmp2 General_801 matches 10..99 run data modify entity 0-0-321-0-19 text set value '{"translate":"%1$s タイム：%2$s.%3$s MVP：%4$s","with":[{"text":"5th"},{"score":{"name":"$Tmp","objective":"General_801"}},{"score":{"name":"$Tmp2","objective":"General_801"}},{"storage":"ms_801:record","nbt":"Hardcore[4].Player"}]}'