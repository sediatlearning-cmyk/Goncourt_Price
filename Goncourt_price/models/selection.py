# -*- coding: utf-8 -*-

"""
Classe Selection
"""
from datetime import date
from typing import Optional, Any
from dataclasses import dataclass, field


@dataclass
class Selection:

    """Sélection   :
    - id_selection                    : clé primaire de l'entité persistante
    - selection_date                  : date de la sélection
    - selection_number                : numéro de sélection
    - winner_book                    : livre gagnant
    """
    id_selection: Optional[int] = field(default=None, init=False)
    selection_date: date
    selection_number: int
    winner_book: int
    winner_books_list = []

    def __str__(self) -> str:
        selection_str = f" {self.selection_date}, {self.selection_number}, {self.winner_books_list}\n"
        return selection_str
