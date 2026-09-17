# -*- coding: utf-8 -*-

"""
Classe Prize
"""

from typing import Optional
from dataclasses import dataclass, field


@dataclass
class Prize:
    """Prix   :
    - id_prize                       : clé primaire de l'entité persistante
    - year                           : année d'obtention du prix
    """
    id_author: Optional[int] = field(default=None, init=False)
    biography: str

    def __str__(self) -> str:
        book_str = f" {self.biography},\n"
        return book_str
