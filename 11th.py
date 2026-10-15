def color_map(graph, colors, result, node):
    if node == len(graph):
        return True

    region = list(graph.keys())[node]

    for color in colors:
        safe = True

        for neighbor in graph[region]:
            if result.get(neighbor) == color:
                safe = False
                break

        if safe:
            result[region] = color

            if color_map(graph, colors, result, node + 1):
                return True

            del result[region]

    return False

graph = {
    'A': ['B', 'C'],
    'B': ['A', 'C', 'D'],
    'C': ['A', 'B', 'D'],
    'D': ['B', 'C']
}

colors = ['Red', 'Green', 'Blue']
result = {}

if color_map(graph, colors, result, 0):
    print(result)
else:
    print("No solution")
