# -*- coding: utf-8 -*-

"""
Classe Dao[Book]
"""

from models.book import Book
from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional


@dataclass
class BookDao(Dao[Book]):
    def create(self, book: Book) -> int:
        """Crée en BD l'entité Course correspondant au cours course

        :param book: à créer sous forme d'entité Book en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql = """INSERT INTO book (title, resume, number_of_pages, id_author) VALUES (%s, %s, %s, %s)"""
            cursor.execute(sql, (book.title, book.resume, book.number_of_pages, book.id_author))
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, isbn: int) -> Optional[Book]:
        """Renvoie le cours correspondant à l'entité dont l'id est id_course
           (ou None s'il n'a pu être trouvé)"""
        book: Optional[Book]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM book WHERE isbn = %s"
            cursor.execute(sql, (isbn,))
            record = cursor.fetchone()
        if record is not None:
            book = Book(record['title'], record['resume'], record['number_of_pages'], record['id_author'])
            book.id = record['isbn']
        else:
            book = None

        return book
    """TODO : gérer les exceptions """

    def update(self, book: Book) -> bool:
        """Met à jour en BD l'entité Book correspondant à book, pour y correspondre

        :param book: livre déjà mis à jour en mémoire
        :return: True si la mise à jour a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ UPDATE book SET title = %s, resume =  %s, number_of_pages = %s WHERE isbn = %s """
            cursor.execute(sql, (book.title, book.resume, book.number_of_pages, book.id_author))
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, book: Book) -> bool:
        """Supprime en BD l'entité Book correspondant à course

        :param book: cours dont l'entité Book correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE book WHERE isbn = %s """
            cursor.execute(sql, (book.isbn,))
            Dao.connection.commit()
        return True
