# -*- coding: utf-8 -*-

"""
Classe Dao[Author]
"""
from models import user
from models.author import Author
from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional

from models.user import User


def read_all() -> list[Author]:
    authors: list[Author] = []

    with Dao.connection.cursor() as cursor:
        sql = "SELECT * FROM author"
        cursor.execute(sql)
        records = cursor.fetchall()

    for record in records:
        author = Author(
            record['biography'],
            record['id_user']
        )
        author.id_author = record['id_author']
        authors.append(author)

    return authors


@dataclass
class AuthorDao(Dao[Author]):
    def create(self, author: Author) -> int:
        """Crée en BD l'entité Author correspondant à l'auteur

        :param author: à créer sous forme d'entité Author en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql_user = "INSERT INTO user (user.lastname, user.firstname) VALUES (%s, %s)"
            sql = """INSERT INTO author (biography, author.id_user) VALUES (%s, %s, %s)
            FULL JOIN user ON author.id_user = user.id_user"""
            cursor.execute(sql, ((author.biography, author.id_user),))
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, id_author: int) -> Optional[Author]:
        """Renvoie l'auteur correspondant à l'entité dont l'id est id_author
           (ou None s'il n'a pu être trouvé)"""
        author: Optional[Author]

        with Dao.connection.cursor() as cursor:
            sql = """ SELECT go_user.us_lastname, go_user.us_firstname, go_author.au_biography FROM go_author 
                  JOIN go_user 
                  ON go_user.us_id_user = go_author.au_id_user
                  WHERE go_author.au_id_author  = %s """
            cursor.execute(sql, (id_author,))
            record = cursor.fetchone()
        if record is not None:
            author = Author(record['au_biography'],
                            record['us_lastname'],
                            record['us_firstname']
                            )
            author.id_author = record['id_author']
        else:
            author = None

        return author
    """TODO : gérer les exceptions """


    def update(self, author: Author) -> bool:
        """Met à jour en BD l'entité Author correspondant à author, pour y correspondre

        :param author: auteur déjà mis à jour en mémoire
        :return: True si la mise à jour a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ UPDATE author SET biography = %s, id_user =  %s WHERE id_author = %s """
            cursor.execute(sql, (author.biography, author.id_user))
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, author: Author) -> bool:
        """Supprime en BD l'entité Author correspondant à author
        :param author: auteur dont l'entité Author correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE author WHERE id_author = %s """
            cursor.execute(sql, (author.id_author,))
            Dao.connection.commit()
        return True
