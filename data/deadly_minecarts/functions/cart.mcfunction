# As the minecart near a killable entity

execute store result score %minecart.motion.x dm.motion run data get entity @s Motion[0] 1000
execute store result score %minecart.motion.y dm.motion run data get entity @s Motion[1] 1000
execute store result score %minecart.motion.z dm.motion run data get entity @s Motion[2] 1000

scoreboard players operation %minecart.motion.x dm.motion *= %minecart.motion.x dm.motion
scoreboard players operation %minecart.motion.y dm.motion *= %minecart.motion.y dm.motion
scoreboard players operation %minecart.motion.z dm.motion *= %minecart.motion.z dm.motion

scoreboard players operation %minecart.motion.sum dm.motion = %minecart.motion.x dm.motion
scoreboard players operation %minecart.motion.sum dm.motion += %minecart.motion.y dm.motion
scoreboard players operation %minecart.motion.sum dm.motion += %minecart.motion.z dm.motion

data modify storage deadly_minecarts:motion_vector input set value 0
execute store result storage deadly_minecarts:motion_vector input int 1 run scoreboard players get %minecart.motion.sum dm.motion

execute store result score %minecart.motion.vector.magnitude dm.motion run function math:sqrt/calc_sqrt with storage deadly_minecarts:motion_vector

execute if score %minecart.motion.vector.magnitude dm.motion matches 800.. as @p[distance=0..2,predicate=!deadly_minecarts:riding_cart] run damage @s 15 fly_into_wall

execute if score %minecart.motion.vector.magnitude dm.motion matches 600..799 as @p[distance=0..2,predicate=!deadly_minecarts:riding_cart] run damage @s 10 fly_into_wall

execute if score %minecart.motion.vector.magnitude dm.motion matches 400..599 as @p[distance=0..2,predicate=!deadly_minecarts:riding_cart] run damage @s 5 fly_into_wall

