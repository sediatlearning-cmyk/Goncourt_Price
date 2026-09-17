# -*- coding: utf-8 -*-

"""
Classe Character
"""

from typing import Optional
from dataclasses import dataclass, field


@dataclass
class Character:
    """Personnages principaux :
    - id_character                       : clé primaire de l'entité persistante
    - character_name                     : nom du character
    """
    id_character: Optional[int] = field(default=None, init=False)
    character_name: str

    def __str__(self) -> str:
        character_str = f" {self.character_name},\n"
        return character_str
