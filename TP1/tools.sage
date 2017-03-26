def permut(l):
    """ Renvoie les différences permutations possibles à partir d'un tableau """
    if not l:
        return [[]]
    res = []
    for e in l:
        temp = l[:]
        temp.remove(e)
        res.extend([[e] + r for r in permut(temp)])

    return res
