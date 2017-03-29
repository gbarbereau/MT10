load "morphisme.sage"
load "neutre.sage"
load "associativite.sage"
load "morphisme.sage"
load "tools.sage"
load "symetrique.sage"

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
    print("Rappel des trucs au debut :")
    print("Table de la loi", table)
    print("Ensemble", ensemble)
    print("Automorphisme", application)
    print("Test element neutre..")
    print("Resultat : ", element_neutre(table, ensemble))
    print("Test symetrique de 0..")
    print("Resultat : ", symetrique(0, table, ensemble))
    print("Test table symetrique..")
    print("Resultat : ", table_symetrique(table, ensemble))
    print("Test associativite")
    print("Resultat : ", associativite(table))
    print("Test automorphisme")
    print("Resultat", get_automorphisme(table, ensemble))

if __name__ == '__main__':
    main()
