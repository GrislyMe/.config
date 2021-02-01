def genColor(perc : int):
    if perc < 20:
        return "#FF0000"
    elif perc < 40:
        return "#FFAE00"
    elif perc < 60:
        return "#FFF600"
    elif perc < 85:
        return "#A8FF00"
    elif perc < 100:
        return "#09FF00"
