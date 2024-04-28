scoreboard players operation %math.out math.sqrt += %math.temp math.sqrt
scoreboard players operation %math.out math.sqrt /= #2 math.constant

scoreboard players operation %math.temp math.sqrt = %math.in math.sqrt
scoreboard players operation %math.temp math.sqrt /= %math.out math.sqrt

execute if score %math.out math.sqrt > %math.temp math.sqrt run function math:sqrt/_loop


