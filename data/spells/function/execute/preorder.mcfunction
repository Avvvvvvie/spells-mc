# save the last family id as the current parent id
scoreboard players operation current_parent spell_parent = max_id spell_family

# create a new family id
scoreboard players add max_id spell_family 1
scoreboard players operation current_family spell_family = max_id spell_family

# reset skip option
scoreboard players set skip_children spell 0

# do stuff with the current child
execute as @e[tag=spell_circle] if score @s spell = current_spell spell if score @s spell_parent = current_family spell_family run function spells:create/process_child

# remove from stack unless postorder option was selected
execute unless data storage spells:variables current.postorder run data remove storage spells:variables stack[0]

# add all the children to the stack
execute if data storage spells:variables current.children[0] if score skip_children spell matches 0 run function spells:execute/append_children