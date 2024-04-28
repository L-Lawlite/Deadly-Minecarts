## This is a macro
# Takes input from data storage
# returns a scoreboard value in output
##

$scoreboard players set %math.in math.sqrt $(input)
scoreboard players operation %math.out math.sqrt = %math.in math.sqrt
scoreboard players set %math.temp math.sqrt 1

execute if score %math.out math.sqrt > %math.temp math.sqrt run function math:sqrt/_loop
return run scoreboard players get %math.out math.sqrt
