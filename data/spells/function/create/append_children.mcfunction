data modify storage data stack append from storage data current.children[0]
data remove storage data current.children[0]

# (execute store result storage data stack[0].xyz... # some data that i want my children to inherit)

execute if data storage data current.children[0] run function spells:create/append_children