data modify storage clay_502:storage match.display.list prepend from storage clay_502:storage match.display.list[-1]
data remove storage clay_502:storage match.display.list[-1]

function clay_502:hologram/menu/match/display