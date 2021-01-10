scoreboard players add @e[sort=nearest,limit=1,distance=..0.1] score_602 100
scoreboard players add $602 score_602 100
tellraw @a[team=602] [{"text":"["},{"selector":"@s"},{"text":"] Score: "},{"text":"200","color":"gold"},{"text":" → "},{"text":"["},{"selector":"@e[sort=nearest,limit=1,distance=..0.1]]"},{"text":"]"}]
function ats_602:tile/am/bee
