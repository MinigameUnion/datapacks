scoreboard players add $602 score_602 100
tellraw @a[tag=join_area_602] [{"text":"["},{"nbt":"item.tag.Name","entity":"@s","interpret":true},{"text":"] Score: "},{"text":"200","color":"gold"},{"text":" → "},{"text":"["},{"nbt":"item.tag.Name","entity":"@e[sort=nearest,limit=1,tag=!bee_check_602]]","interpret":true},{"text":"]"}]
function ats_602:unit/am/bee
