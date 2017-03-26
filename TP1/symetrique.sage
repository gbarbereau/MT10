load "neutre.sage"

def symetrique(indice, table, ensemble):
    """Retourne le symétrique de l'élément d'indice donné"""
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
    """Retourne l'ensemble des couples (élément, symétrique)"""
    result = []
    for indice_e in range(len(ensemble)):
        elem_sym = symetrique(indice_e, table, ensemble)
        if elem_sym is not None:
            result.append((ensemble[indice_e], elem_sym))
    return result


