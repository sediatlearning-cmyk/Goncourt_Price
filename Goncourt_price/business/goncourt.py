# -*- coding: utf-8 -*-

"""
Classe School
"""

from dataclasses import dataclass, field

from daos.book_dao import BookDao, read_all, read_id_author, read_id_editor, read_id_character
from daos.author_dao import AuthorDao
from daos.character_dao import CharacterDao
from daos.editor_dao import EditorDao
from models.book import Book
from models.character import Character
from models.editor import Editor
from models.author import Author


@dataclass
class Goncourt:
    """Couche métier de l'application de gestion du prix Goncourt,
    reprenant les cas d'utilisation et les spécifications fonctionnelles :
    books : liste des livres sélectionnés
    authors : liste des auteurs
    editors : liste des éditeurs
    characters : liste des personnages
    """

    books: list[Book] = field(default_factory=list, init=False)
    authors: list[Author] = field(default_factory=list, init=False)
    editors: list[Editor] = field(default_factory=list, init=False)
    characters: list[Character] = field(default_factory=list, init=False)

    def add_book(self, book: Book) -> None:
        """Ajout du livre book à la liste des livres."""
        self.books.append(book)

    def add_author(self, author: Author) -> None:
        """Ajout de l'auteur author à la liste des auteurs."""
        self.authors.append(author)

    def add_editor(self, editor: Editor) -> None:
        """Ajout de l'éditeur à la liste des éditeurs."""
        self.editors.append(editor)

    def add_character(self, character: Character) -> None:
        """Ajout du ou des personnages principaux à la liste des personnages principaux."""
        self.characters.append(character)

    # Permet de charger toutes les infos des livres
    def load_books(self) -> None:
        author_dao = AuthorDao()
        editor_dao = EditorDao()
        character_dao = CharacterDao()

        # récupération de tous les livres
        self.books = read_all()

        for book in self.books:
            if book.isbn is None:
                continue

            # récupération de l'id de l'auteur du livre
            id_author = read_id_author(book.isbn)

            if id_author is not None:
                author_dao.read(id_author)

            # récupération de l'éditeur du livre
            id_editor = read_id_editor(book.isbn)

            if id_editor is not None:
                editor_dao.read(id_editor)

            # récupération des personnages du livre
            characters_founded: list[Character] = field(default_factory=list, init=False)
            id_character = read_id_character(book.isbn)
            if id_character is not None:
                characters_founded.append(id_character)
                character_dao.read(id_character)

            # récupération du prix éditeur et la date de publication du livre

    def display_books_list(self) -> None:
        """Affichage de la liste des livres avec pour chacun d'eux :
        leur auteur, l'éditeur, le prix éditeur, la date de publication et les personnages
        """
        for book in self.books:
            print(f"livre de {book}")
            for author in authors:
                print(f"- {author}")
            print()
