
# add the first child to the stack to start with it
data modify storage spells:variables stack set value []
data modify storage spells:variables stack prepend from storage spells spell
function spells:create/recursion