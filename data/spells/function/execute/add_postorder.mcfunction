# select postorder
data modify storage spells:variables current.postorder set value 1b

# save the family id
execute store result storage spells:variables current.spell_family int 1 run scoreboard players get max_id spell_family