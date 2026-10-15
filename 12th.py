board = [' '] * 9

def display():
    print()
    for i in range(0, 9, 3):
        print(board[i], '|', board[i+1], '|', board[i+2])
        if i < 6:
            print('--+---+--')

def winner():
    lines = [
        (0,1,2), (3,4,5), (6,7,8),
        (0,3,6), (1,4,7), (2,5,8),
        (0,4,8), (2,4,6)
    ]

    for a, b, c in lines:
        if board[a] == board[b] == board[c] != ' ':
            return board[a]

    return None

player = 'X'

for turn in range(9):
    display()

    try:
        pos = int(input(f"Player {player}, enter position (1-9): ")) - 1
    except ValueError:
        print("Enter a number.")
        continue

    if pos < 0 or pos > 8 or board[pos] != ' ':
        print("Invalid position. Try again.")
        continue

    board[pos] = player

    if winner():
        display()
        print("Player", player, "wins!")
        break

    player = 'O' if player == 'X' else 'X'
else:
    display()
    print("Draw!")
