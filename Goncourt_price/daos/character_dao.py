# -*- coding: utf-8 -*-

"""
Classe Dao[Character]
"""
from models.author import Author
from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional

from models.character import Character


def read_all() -> list[Character]:
    characters: list[Character] = []

    with Dao.connection.cursor() as cursor:
        sql = "SELECT * FROM character"
        cursor.execute(sql)
        records = cursor.fetchall()

    for record in records:
        character = Character(
            record['character_name']
        )
        character.id_character = record['id_character']
        characters.append(character)

    return characters


@dataclass
class CharacterDao(Dao[Character]):
    def create(self, character: Character) -> int:
        """Crée en BD l'entité Character correspondant au(x) personnage(s) principal(paux)

        :param character: à créer sous forme d'entité Character en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql = """INSERT INTO character (character_name) VALUES (%s)"""
            cursor.execute(sql, character.character_name)
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, id_character: int) -> Optional[Character]:
        """Renvoie le(s) personnage(s) principal(paux) correspondant à l'entité dont l'id est id_character
           (ou None s'il n'a pu être trouvé)"""
        character: Optional[Character]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM character WHERE id_character = %s"
            cursor.execute(sql, (id_character,))
            record = cursor.fetchone()
        if record is not None:
            character = Character(record['character_name'])
            character.id_character = record['id_character']
        else:
            character = None

        return character
    """TODO : gérer les exceptions """

    def update(self, character: Character) -> bool:
        """Met à jour en BD l'entité Character correspondant à character, pour y correspondre

        :param character: personnage(s) principal(paux) déjà mis à jour en mémoire
        :return: True si la mise à jour a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ UPDATE character SET character_name = %s WHERE id_character = %s """
            cursor.execute(sql, character.character_name)
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, character: Character) -> bool:
        """Supprime en BD l'entité Character correspondant à character
        :param character: personnage(s) principal(paux) dont l'entité Character correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE character WHERE id_character = %s """
            cursor.execute(sql, (character.id_character,))
            Dao.connection.commit()
        return True
