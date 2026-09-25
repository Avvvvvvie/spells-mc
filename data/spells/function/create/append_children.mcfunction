data modify storage spells:variables stack append from storage spells:variables current.children[0]
data remove storage spells:variables current.children[0]

# (execute store result storage spells:variables stack[0].xyz... # some data that i want my children to inherit)

execute if data storage spells:variables current.children[0] run function spells:create/append_children