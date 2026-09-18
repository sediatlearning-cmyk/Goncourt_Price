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
    - id_user                        : id de l'utilisateur
    """
    id_author: Optional[int] = field(default=None, init=False)
    biography: str
    id_user: Optional[int] = field(default=None, init=False)

    def __str__(self) -> str:
        author_str = f" {self.biography},{self.id_user}\n"
        return author_str
