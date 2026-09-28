$execute store result score r spell run data get storage spells:variables n_circle[$(n_children)][$(child)].r 1000
$execute store result score xi spell run data get storage spells:variables n_circle[$(n_children)][$(child)].xi 1000
$execute store result score yi spell run data get storage spells:variables n_circle[$(n_children)][$(child)].yi 1000

scoreboard players operation r spell *= size spell
scoreboard players operation xi spell *= size spell
scoreboard players operation yi spell *= size spell

$execute store result storage spells:variables current.children[$(child)].size float 0.000001 run scoreboard players get r spell
$execute store result storage spells:variables current.children[$(child)].xi float 0.000001 run scoreboard players get xi spell
$execute store result storage spells:variables current.children[$(child)].yi float 0.000001 run scoreboard players get yi spell