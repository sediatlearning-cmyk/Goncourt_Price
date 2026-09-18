# -*- coding: utf-8 -*-

"""
Classe Dao[Editor]
"""

from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional

from models.editor import Editor


def read_all() -> list[Editor]:
    editors: list[Editor] = []

    with Dao.connection.cursor() as cursor:
        sql = "SELECT * FROM editor"
        cursor.execute(sql)
        records = cursor.fetchall()

    for record in records:
        editor = Editor(
            record['editor_name']
        )
        editor.id_editor = record['id_editor']
        editors.append(editor)

    return editors


@dataclass
class EditorDao(Dao[Editor]):
    def create(self, editor: Editor) -> int:
        """Crée en BD l'entité Editor correspondant à l'éditeur editor

        :param editor: à créer sous forme d'entité Editor en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql = """INSERT INTO editor (editor_name ) VALUES (%s)"""
            cursor.execute(sql, editor.editor_name)
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, id_editor: int) -> Optional[Editor]:
        """Renvoie l'éditeur correspondant à l'entité dont l'id est id_editor
           (ou None s'il n'a pu être trouvé)"""
        editor: Optional[Editor]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT ed_editor_name FROM go_editor WHERE ed_id_editor = %s"
            cursor.execute(sql, (id_editor,))
            record = cursor.fetchone()
        if record is not None:
            editor = Editor(record['editor_name'])
            editor.id_editor = record['id_editor']
        else:
            editor = None

        return editor
    """TODO : gérer les exceptions """

    def update(self, editor: Editor) -> bool:
        """Met à jour en BD l'entité Editor correspondant à editor, pour y correspondre

        :param editor: éditeur déjà mis à jour en mémoire
        :return: True si la mise à jour a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ UPDATE editor SET editor_name = %s, WHERE id_editor = %s """
            cursor.execute(sql, (editor.editor_name, editor.id_editor))
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, editor: Editor) -> bool:
        """Supprime en BD l'entité Editor correspondant à editor

        :param editor: éditeur dont l'entité Editor correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE editor WHERE id_editor = %s """
            cursor.execute(sql, (editor.id_editor,))
            Dao.connection.commit()
        return True

    def read_by_isbn(self, isbn):
        pass
