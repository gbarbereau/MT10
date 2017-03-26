table = [
    [0, 1, 2, 3],
    [1, 2, 3, 0],
    [2, 3, 0, 1],
    [3, 0, 1, 2]
]
ensemble = [0, 1, 2, 3]


def element_neutre(table, ensemble):
    for e in ensemble:
        elem_neutre = True
        for indice in range(len(table)):
            if not (table[indice][e] == indice and table[e][indice] == indice):
                elem_neutre = False
                break
        if elem_neutre:
            return e


def symetrique(indice, table, ensemble):
    elem_neutre = element_neutre(table, ensemble)
    sym = False
    for i in range(len(table)):
        if table[i][indice] == elem_neutre and table[indice][i] == elem_neutre:
            symetrique = i
            sym = True
            break
    if sym:
        return ensemble[symetrique]
    return None


def table_symetrique(table, ensemble):
    result = []
    for indice_e in range(len(ensemble)):
        elem_sym = symetrique(indice_e, table, ensemble)
        if elem_sym is not None:
            result.append((ensemble[indice_e], elem_sym))
    return result


print(table_symetrique(table, ensemble))
#print(symetrique(0, table, ensemble))
