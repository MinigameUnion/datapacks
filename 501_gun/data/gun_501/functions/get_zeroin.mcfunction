#  # = m/t
scoreboard players operation # num_501 = #SPEED num_501
scoreboard players operation # num_501 *= #UNIT num_501

scoreboard players operation #ZEROIN num_501 *= #GRAVITY ope_501
scoreboard players operation #ZEROIN num_501 /= # num_501

scoreboard players operation #GRAVITY num_501 = #ZEROIN num_501

#tellraw @a [{"text":"#GRAVITY num_501 : "},{"score":{"name": "#GRAVITY","objective": "num_501"}}]