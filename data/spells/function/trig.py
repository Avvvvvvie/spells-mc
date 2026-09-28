import math

table = []

R = 1

for n in range(1, 10):
    if n == 1:
        table.append([
            {r: R, xi: 0, yi: 0, child: 0}
        ])
        continue

    child_radius = R * math.sin(math.pi / n) / (1 + math.sin(math.pi / n))
    distance = R - child_radius

    children = [
        {
            r: child_radius,
            xi: distance * math.cos(2 * math.pi * i / n),
            yi: distance * math.sin(2 * math.pi * i / n),
            child: i
        }
        for i in range(n)
    ]

    table.append(children)

print(table)