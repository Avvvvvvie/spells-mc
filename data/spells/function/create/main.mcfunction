# get an id for this spell
scoreboard players add global_id spell 1
execute store result storage spells:variables spell.id int 1 run scoreboard players get global_id spell



# add the first child to the stack to start with it
data modify storage spells:variables stack set value []
data modify storage spells:variables stack prepend from storage spells spell
scoreboard players set max_id spell_family 0
function spells:create/recursion