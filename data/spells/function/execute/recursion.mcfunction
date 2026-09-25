# pop the next child from the stack
data modify storage data current set from storage data stack[0]
data remove storage data stack[0]

# do stuff with the current child
function spells:create/process_child

# add all the children to the stack
execute if data storage data current.children[0] run function spells:create/append_children

# continue if there are still children on the stack
execute if data storage data stack[0] run function spells:create/recursion