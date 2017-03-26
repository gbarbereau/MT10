load "morphisme.sage"
load "neutre.sage"
load "associativite.sage"
load "morphisme.sage"
load "tools.sage"

#Correspond à la table du groupe (Z/4Z, +, 0)
table = [
            [0, 1, 2, 3],
            [1, 2, 3, 0],
            [2, 3, 0, 1],
            [3, 0, 1, 2]
        ]
#Z/4Z
ensemble = [0, 1, 2, 3]
#Correspond à l'automorphisme Identité entre Z/4Z
application = [0, 1, 2, 3]

def main():
    print("Rappel des éléments à l'entrée :")
    print("Table de la loi", table)
    print("Ensemble", ensemble)
    print("Automorphisme", application)
    print("Test élément neutre..")
    print("Résultat : ", element_neutre(table, ensemble))
    print("Test symétrique de 0..")
    print("Résultat : ", symetrique(0, table, ensemble))
    print("Test table symétrique..")
    print("Résultat : ", table_symetrique(table, ensemble))
    print("Test associativité")
    print("Résultat : ", associativite(table))
    print("Test automorphisme")
    print("Résultat", get_automorphisme(application, ensemble))

if __name__ == '__main__':
    main()

