def genProgressBar(perc : int):
    char = ["░", "▒", "▓", "█"]
    string = char[3] * int(perc / 20)
    if perc == 100:
        return string
    string += char[int((perc % 20) / 5)]
    while len(string) != 5:
        string += char[0]
    return string
