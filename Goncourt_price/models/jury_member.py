# -*- coding: utf-8 -*-

"""
Classe Jury_member
"""

from typing import Optional
from dataclasses import dataclass, field

from models.user import User


@dataclass
class Jury_member:
    """Membre du jury   :
    - id_jury_member                 : clé primaire de l'entité persistante
    - is_president                   : is_president est un booleen
    - is_member                      : is_member est un booleen
    - member_list                    : liste des membres

    """
    id_jury_member: Optional[int] = field(default=None, init=False)
    is_president: bool
    is_member: bool
    member_list = []

    def __str__(self) -> str:
        jury_member_str = f" {self.is_president}, {self.is_member}\n"
        return jury_member_str
