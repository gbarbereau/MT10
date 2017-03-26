load "tools.sage"

def is_morphisme(table1, table2, application):
    """Vérifie si l'application est un morphisme"""
    n = range(len(application))
    for i in n:
        for j in n:
            if (application[table1[i][j]] != table2[application[i]][application[j]]):
                return False

    return True

def get_automorphisme(loi, ensemble):
    """Retourne tous les automorphismes de l'ensemble"""
    permutations = permut(ensemble)
    automorphismes = []
    for e in permutations:
        if is_morphisme(loi,loi,e):
            automorphismes.append(e)
    return automorphismes

