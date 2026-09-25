summon item_display ~ ~ ~ { Tags: [ spell_circle, new_spell_circle ] }

execute as @e[type=item_display, tag=new_spell_circle] run function spells:create/as_spell_circle
# TODO: depending on the circle function, summon a specific circle display