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


def is_morphisme(table1, table2, application):
    n = range(len(application))
    for i in n:
        for j in n:
            if (application[table1[i][j]] != table2[application[i]][application[j]]):
                return False

    return True


application = [0, 1, 2, 3]
#print(is_morphisme(table, table, application))


def permut(l):
    if not l:
        return [[]]
    res = []
    for e in l:
        temp = l[:]
        temp.remove(e)
        res.extend([[e] + r for r in permut(temp)])

    return res


def get_automorphisme(loi, ensemble):
    permutations = permut(ensemble)
    automorphismes = []
    for e in permutations:
        if is_morphisme(loi,loi,e):
            automorphismes.append(e)
    return automorphismes

print(get_automorphisme(table,ensemble))
