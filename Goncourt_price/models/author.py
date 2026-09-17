# -*- coding: utf-8 -*-

"""
Classe Author
"""

from typing import Optional
from dataclasses import dataclass, field


@dataclass
class Author:
    """Acteur   :
    - id_author                      : clé primaire de l'entité persistante
    - biography                      : biographie de l'auteur
    """
    id_author: Optional[int] = field(default=None, init=False)
    biography: str

    def __str__(self) -> str:
        book_str = f" {self.biography},\n"
        return book_str
