# -*- coding: utf-8 -*-

"""
Classe Dao[Book]
"""
from models.author import Author
from models.book import Book
from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional


def read_all() -> list[Book]:
    books: list[Book] = []

    with Dao.connection.cursor() as cursor:
        sql = "SELECT bo_isbn, bo_title, bo_resume, bo_pages_number, bo_id_author FROM go_book"
        cursor.execute(sql)
        records = cursor.fetchall()

    for record in records:
        book = Book(
            record['bo_title'],
            record['bo_resume'],
            record['bo_pages_number'],
            record['bo_id_author']
        )
        book.isbn = record['bo_isbn']
        books.append(book)

    return books


def read_id_editor(isbn):
    """Renvoie le nom de l'éditeur correspondant à l'entité dont l'id est isbn
              (ou None s'il n'a pu être trouvé)"""
    with Dao.connection.cursor() as cursor:
        sql = """ SELECT go_editor.ed_id_editor FROM go_book 
        JOIN go_book_editor ON go_book_editor.bo_ed_isbn = go_book.bo_isbn
        JOIN go_editor ON go_editor.ed_id_editor = go_book_editor.bo_ed_id_editor
        WHERE go_book.bo_isbn  = %s """
        cursor.execute(sql, (isbn,))
        Dao.connection.commit()
    return True


def read_id_author(isbn):
    """Renvoie l'id de l'auteur correspondant à l'entité dont l'id est isbn
                  (ou None s'il n'a pu être trouvé)"""
    with Dao.connection.cursor() as cursor:
        sql = """ SELECT go_book.bo_id_author FROM go_book 
                  WHERE go_book.bo_isbn  = %s """
        cursor.execute(sql, (isbn,))
        Dao.connection.commit()
    return True


def read_id_character(isbn):
    """Renvoie le ou les personnage(s) principal(paux) correspondant à l'entité dont l'id est isbn
              (ou None s'il n'a pu être trouvé)"""
    with Dao.connection.cursor() as cursor:
        sql = """ SELECT go_character.cha_id_character FROM go_book
                JOIN go_character 
                ON go_character.cha_isbn = go_book.bo_isbn
                WHERE go_book.bo_isbn  = %s """
        cursor.execute(sql, (isbn,))
        Dao.connection.commit()
    return True


@dataclass
class BookDao(Dao[Book]):
    def create(self, book: Book) -> int:
        """Crée en BD l'entité Book correspondant au livre book

        :param book: à créer sous forme d'entité Book en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql = """INSERT INTO go_book (bo_title, bo_resume, bo_pages_number, bo_id_author)
                VALUES (%s,%s,%s, %s)"""
            cursor.execute(sql, (book.title, book.resume, book.number_of_pages, book.id_author))
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, isbn: int) -> Optional[Book]:
        """Renvoie le livre correspondant à l'entité dont l'id est isbn
           (ou None s'il n'a pu être trouvé)"""
        book: Optional[Book]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM go_book WHERE bo_id_author = %s"
            cursor.execute(sql, (isbn,))
            record = cursor.fetchone()
        if record is not None:
            book = Book(record['title'],
                        record['resume'],
                        record['number_of_pages'],
                        record['id_author'])
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
            sql = """ UPDATE go_book SET bo_title = %s, bo_resume = %s, bo_pages_number = %s\n"
                       WHERE bo_isbn = %s """
            cursor.execute(sql, (book.title, book.resume, book.number_of_pages, book.id_author))
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, book: Book) -> bool:
        """Supprime en BD l'entité Book correspondant à book

        :param book: cours dont l'entité Book correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE FROM go_book WHERE bo_isbn = %s """
            cursor.execute(sql, (book.isbn,))
            Dao.connection.commit()
        return True
