def element_neutre(table, ensemble):
    """Retourne l'élément neutre de l'ensemble, False le cas échéant"""
    for e in ensemble:
        elem_neutre = True
        for indice in range(len(table)):
            if not (table[indice][e] == indice and table[e][indice] == indice):
                elem_neutre = False
                break
        if elem_neutre:
            return e
    return False
