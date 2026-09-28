# pop the next child from the stack
data modify storage spells:variables current set from storage spells:variables stack[0]

execute if data storage spells:variables current.postorder run function spells:execute/postorder

execute unless data storage spells:variables current.postorder run function spells:execute/preorder

# continue if there are still children on the stack
execute if data storage spells:variables stack[0] run function spells:execute/recursion