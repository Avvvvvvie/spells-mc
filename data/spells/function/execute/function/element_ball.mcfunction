# TODO: summon an entity that represents the element ball
execute as @e[tag=new_spell_entity] run function spells:execute/function/as_element_ball

# skip children (ingredients) because we used them up and they have nothing to summon anymore
scoreboard players set skip_children spell 1