table = [
    [0, 1, 2, 3],
    [1, 2, 3, 0],
    [2, 3, 0, 1],
    [3, 0, 1, 2]
]
ensemble = [0, 1, 2, 3]


def associativite(table):
    taille_table = len(table)
    for i in range(taille_table):
        for j in range(taille_table):
            for k in range(taille_table):
                if table[table[i][j]][k] != table[i][table[k][j]]:
                    return False
    return True

print(associativite(table))