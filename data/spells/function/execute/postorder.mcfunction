# get the current family id
execute store result score current_family spell_family run data get storage spells:variables current.spell_family

# process the current child
function spells:create/process_child

# remove it from the stack
data remove storage spells:variables stack[0]