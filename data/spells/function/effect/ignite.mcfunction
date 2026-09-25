## single-tick, no-knockback ignition according to the minecraft commands discord.
# Check if entity has an item equipped in the slot you wanna use for this (usually the head slot) and if not put an item in there that doesnt show (like conduits)
execute unless data entity @s equipment.head run scoreboard players set temp spell 1
execute if score temp spell matches 1 run item replace entity @s armor.head with stone[equippable={slot:"head", equip_sound:"minecraft:intentionally_empty"}]

# Put your custom enchantment on the head item using /item modify
item modify entity @s armor.head spells:add_ignite

# Swap the players gamemode to spectator and then back to their original gamemode
gamemode spectator @s
gamemode creative @s

# Remove the enchantment from the item
item modify entity @s armor.head spells:remove_ignite

# Remove the item if it is your placeholder item
execute if score temp spell matches 1 run item replace entity @s armor.head with air