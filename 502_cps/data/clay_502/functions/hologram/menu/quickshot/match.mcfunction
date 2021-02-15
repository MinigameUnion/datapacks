
data remove storage clay_502:storage match.display.list[]
data modify storage clay_502:storage match.display.list append from storage clay_502:storage match.playing[{tag:{type:2b}}]
data modify storage clay_502:storage match.display.return set value 5009

execute unless data storage clay_502:storage match.display.list[0] run function clay_502:hologram/menu/match/empty
execute if data storage clay_502:storage match.display.list[0] run function clay_502:hologram/menu/match/display