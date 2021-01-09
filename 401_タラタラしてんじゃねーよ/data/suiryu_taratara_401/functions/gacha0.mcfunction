execute unless score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run summon minecraft:cod 3999.50 52.50 11.50 {DeathLootTable: "suiryu_taratara_401:gacha", Health: 3f, Rotation: [-135f, 0f], Air: 100, Tags: ["taratara_gacha_401"]}
execute if score #cod_fes_401 tara_tri1_401 matches 0 if score #cod_fes_401 tara_score1_401 matches 1 run summon minecraft:cod 3999.50 52.50 11.50 {DeathLootTable: "suiryu_taratara_401:cod_fes_1", Health: 3f, Rotation: [-135f, 0f], Air: 100, Tags: ["taratara_gacha_401"]}

scoreboard players set @s remove_coin_000 5000
playsound minecraft:entity.player.levelup master @a 3999.48 50.50 9.88 1 2
tag @s add taratara_gachaed_401
kill @e[type=item,x=3999,y=51,z=11,dx=1,dy=1,dz=1]
