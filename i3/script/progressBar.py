def bat(perc : int):
    char = ["░", "▒", "█"]
    bar = char[2] * int(perc / 20)
    if perc == 100:
        return bar
    bar += char[1]
    while len(bar) != 5:
        bar += char[0]
    return bar

def wifi(perc : int):
    char = ["░", "▒", "█"]
    bar = char[2] * int(perc / 33)
    if perc >= 99:
        return bar
    bar += char[1]
    if len(bar) != 3:
        bar += char[0]
    return bar

# "░", "▒", "▓", "█"
