execute if score @s coin_000 matches 5000.. unless entity @e[type=cod,tag=taratara_gacha_401] unless entity @a[tag=taratara_gachaed_401] run function suiryu_taratara_401:gacha0
execute unless score @s coin_000 matches 5000.. run tellraw @s [{"nbt":"coin","storage":"system_000:string","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]
