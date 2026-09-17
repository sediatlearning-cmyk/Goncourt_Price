# -*- coding: utf-8 -*-

"""
Classe User
"""
from abc import ABC
from typing import Optional
from dataclasses import dataclass, field


@dataclass
class User (ABC):
    """Utilisateur   :
    - id_user                        : clé primaire de l'entité persistante
    - lastname                       : nom de l'utilisateur
    - firstname                      : prénom de l'utilisateur

    """
    id_user: Optional[int] = field(default=None, init=False)
    lastname: str
    firstname: str

    def __str__(self) -> str:
        user_str = f" {self.lastname}, {self.firstname}\n"
        return user_str
