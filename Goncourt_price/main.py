#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Application de gestion du prix Goncourt
"""
from business.goncourt import Goncourt


def main() -> None:
    """Programme principal."""
    print("""\
--------------------------
Bienvenue dans notre application de Gestion du prix Goncourt
--------------------------""")

    goncourt: Goncourt = Goncourt()

    # affichage de la liste des livres, leur auteur et leur éditeur
    goncourt.display_books_list()

    print(goncourt.get_book_by_id(1))
    print(goncourt.get_book_by_id(2))
    print(goncourt.get_book_by_id(9))

if __name__ == '__main__':
    main()

