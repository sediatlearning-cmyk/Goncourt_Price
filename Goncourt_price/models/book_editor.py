# -*- coding: utf-8 -*-

"""
Classe Book_Editor
"""
from datetime import date
from typing import Optional
from dataclasses import dataclass, field


@dataclass
class BookEditor:
    """Livre:
    - isbn                      : clé primaire de l'entité persistante
    - id_editor                 : id du livre
    - editor_price              : prix du livre
    - publication_date          : date de publication du livre

    """
    isbn: Optional[int] = field(default=None, init=False)
    id_editor: Optional[int] = field(default=None, init=False)
    editor_price: float
    publication_date: date

    def __str__(self) -> str:
        book_editor_str = f"{self.isbn},{self.id_editor}, {self.editor_price}),{self.publication_date}\n"
        book_editor_str += f"référencé par {self.isbn}" \
            if self.isbn is not None else "aucun d'auteur renseigné "
        return book_editor_str

