# -*- coding: utf-8 -*-

"""
Classe Book
"""

from typing import Optional
from dataclasses import dataclass, field

from models.author import Author


@dataclass
class Book:
    """Livre  :
    - isbn                      : clé primaire de l'entité persistante
    - title                     : nom du livre
    - resume                    : résumé du livre
    - number_of_pages           : nombre de pages du livre
    - id_author                : id du livre
    """
    isbn: Optional[int] = field(default=None, init=False)
    title: str
    resume: str
    number_of_pages: int
    id_author: Author

    def __init__(self):
        self.author = None

    def __str__(self) -> str:
        book_str = f"{self.title},{self.resume}, {self.number_of_pages}),{self.id_author}\n"
        book_str += f"écrit par {self.id_author}" \
            if self.id_author is not None else "aucun d'auteur renseigné "
        return book_str
