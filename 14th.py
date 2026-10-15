def alphabeta(depth, node, maximizing, scores,
              alpha, beta, height):
    if depth == height:
        return scores[node]

    if maximizing:
        value = float('-inf')

        for child in [node * 2, node * 2 + 1]:
            value = max(
                value,
                alphabeta(depth + 1, child, False,
                          scores, alpha, beta, height)
            )
            alpha = max(alpha, value)

            if alpha >= beta:
                break

        return value

    else:
        value = float('inf')

        for child in [node * 2, node * 2 + 1]:
            value = min(
                value,
                alphabeta(depth + 1, child, True,
                          scores, alpha, beta, height)
            )
            beta = min(beta, value)

            if alpha >= beta:
                break

        return value

scores = [3, 5, 2, 9, 12, 5, 23, 23]
height = 3

result = alphabeta(
    0, 0, True, scores,
    float('-inf'), float('inf'), height
)

print("Optimal value:", result)
