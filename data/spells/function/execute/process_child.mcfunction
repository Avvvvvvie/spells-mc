# this is executes as the spell entity that was summoned in create/process_child
# TODO: summon a new entity if needed based on the storage spells:variables current.xyz
# if that is done, give it the same scores as done in create/process_child

tag @s add spell_entity
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = max_id spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent