execute store result storage spells:variables child int 1 run scoreboard players get child spell

function spells:create/function/n_circle_macro with storage spells:variables

scoreboard players add child spell 0
data remove storage spells:variables children[0]
execute if data storage spells:variables children[0] run function spells:create/function/n_circle