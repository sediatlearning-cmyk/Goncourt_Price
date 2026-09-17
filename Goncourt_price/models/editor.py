# -*- coding: utf-8 -*-

"""
Classe Editor
"""

from typing import Optional
from dataclasses import dataclass, field


@dataclass
class Editor:

    """Editeur   :
    - id_editor                       : clé primaire de l'entité persistante
    - editor_name                     : nom de l'éditeur
    """
    id_editor: Optional[int] = field(default=None, init=False)
    editor_name: str

    def __str__(self) -> str:
        editor_str = f" {self.editor_name},\n"
        return editor_str
