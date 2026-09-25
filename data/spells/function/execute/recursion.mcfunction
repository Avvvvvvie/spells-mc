# pop the next child from the stack
data modify storage spells:variables current set from storage spells:variables stack[0]
data remove storage spells:variables stack[0]

# save the last family id as the current parent id
scoreboard players operation current_parent spell_parent = max_id spell_family
# create a new family id
scoreboard players add max_id spell_family 1

# do stuff with the current child
execute as @e[tag=spell_circle] if score @s spell = current_spell spell if score @s spell_parent = max_id spell_family run function spells:create/process_child

# add all the children to the stack
execute if data storage spells:variables current.children[0] run function spells:execute/append_children

# continue if there are still children on the stack
execute if data storage spells:variables stack[0] run function spells:execute/recursion