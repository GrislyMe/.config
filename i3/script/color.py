def genColor(perc : int):
    if perc < 20:
        return "#FF0000" # RED
    elif perc < 40:
        return "#FFAE00" # ORANGE
    elif perc < 60:
        return "#FFF600" # YELLOW
    elif perc < 85:
        return "#A8FF00" # LEMON GREEN
    else:
        return "#09FF00" # GREEN
