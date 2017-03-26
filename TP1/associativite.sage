def associativite(table):
    """Vérifie si la loi passée en entrée est associative"""
    taille_table = len(table)
    for i in range(taille_table):
        for j in range(taille_table):
            for k in range(taille_table):
                if table[table[i][j]][k] != table[i][table[k][j]]:
                    return False
    return True
