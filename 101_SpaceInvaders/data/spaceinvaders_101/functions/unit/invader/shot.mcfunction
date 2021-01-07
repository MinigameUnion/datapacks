###
###敵機の弾召喚
###

#弾の召喚
execute at @e[tag=Invader_101,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run summon armor_stand ~ ~-0.8 ~ {Tags:[Entity_101,Bullet_101,BulletOfInvader_101,temp],ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}],Invisible:1b,NoGravity:1b,Small:1b,Rotation:[0.0f,90.0f]}
playsound minecraft:block.note_block.snare voice @a ~ ~ ~ 2 0.3 1

#idの設定
scoreboard players operation @e[tag=temp] Id_101 = @s id_000
tag @e[tag=temp] remove temp