# if we are in preorder, do nothing and select postorder
execute unless data storage spells:variables current.postorder run return run function spells:execute/add_postorder

# in postorder, all items with a higher id were created after the current item.
# this means that all children with a higher family id than the current are the current items children
# all entities that were summoned by children are thus tagged go_up
execute as @e[tag=spell_entity] if score @s spell = current_spell spell if score @s spell_family > current_family spell_family run tag @s add go_up