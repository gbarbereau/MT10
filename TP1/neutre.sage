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


print(element_neutre(table, ensemble))
