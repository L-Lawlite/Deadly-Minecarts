scoreboard objectives remove dm.motion

data remove storage deadly_minecarts:motion_vector input

tellraw @s {"color":"dark_green","text":"Unistall Successful for deadly minecarts"}
tellraw @s [{"color":"dark_red","text":"Math datapack not uninstalled as it might be having other dependencies. If you want to unistall math datapack\n"},{"clickEvent":{"action":"run_command","value":"/function #math:uninstall"},"color":"blue","text":"Click Here"}]