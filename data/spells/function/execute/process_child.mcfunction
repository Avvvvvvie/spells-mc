# this is executes as the spell entity that was summoned in create/process_child
# TODO: summon a new entity if needed based on the storage spells:variables current.xyz
# if that is done, give it the same scores as done in create/process_child

execute if data storage spells:variables { current: { function: "element_ball" }} run return run function spells:execute/function/element_ball
execute if data storage spells:variables { current: { function: "go_up" }} run return run function spells:execute/function/go_up