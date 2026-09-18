# -*- coding: utf-8 -*-

"""
Classe Dao[Jury_member]
"""

from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional

from models.jury_member import Jury_member


def read_all() -> list[Jury_member]:
    jury_members: list[Jury_member] = []

    with Dao.connection.cursor() as cursor:
        sql = "SELECT * FROM jury_member"
        cursor.execute(sql)
        records = cursor.fetchall()

    for record in records:
        jury_member = Jury_member(
            record['is_president'],
            record['is_member'],
            record['id_user'],
        )
        jury_members.id_jury_member = record['id_jury_member']
        jury_members.append(jury_member)

    return jury_members


@dataclass
class Jury_memberDao(Dao[Jury_member]):

    def create(self, jury_member: Jury_member) -> int:
        """Crée en BD l'entité Jury_member correspondant aux membres du jury jury_member

        :param jury_member: à créer sous forme d'entité Jury_member en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """
        with Dao.connection.cursor() as cursor:
            sql = """INSERT INTO jury_member (is_president, is_member, id_user ) VALUES (%s)"""
            cursor.execute(sql, (jury_member.is_president, jury_member.is_member, jury_member.id_user))
            Dao.connection.commit()
        return cursor.lastrowid

    def read(self, id_jury_member: int) -> Optional[Jury_member]:
        """Renvoie le(s) membre(s) du jury correspondant à l'entité dont l'id est id_jury_member
           (ou None s'il n'a pu être trouvé)"""
        jury_member: Optional[Jury_member]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM jury_member WHERE id_jury_member = %s"
            cursor.execute(sql, (id_jury_member,))
            record = cursor.fetchone()
        if record is not None:
            jury_member = Jury_member(record['is_president'],
                                      record['is_member'],
                                      record['id_user'])
            jury_member.id_jury_member = record['id_jury_member']
        else:
            jury_member = None

        return jury_member
    """TODO : gérer les exceptions """

    def update(self, jury_member: Jury_member) -> bool:
        """Met à jour en BD l'entité Jury_member correspondant à jury_member, pour y correspondre

        :param jury_member: membre du jury déjà mis à jour en mémoire
        :return: True si la mise à jour a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ UPDATE jury_member SET is_president = %s, is_member = %s, id_user = %s
                      WHERE id_jury_member = %s """
            cursor.execute(sql, (jury_member.is_president, jury_member.is_member, jury_member.id_user,
                                 jury_member.id_jury_member))
            Dao.connection.commit()
            return True
    """ TODO: faire la partie False """

    def delete(self, jury_member: Jury_member) -> bool:
        """Supprime en BD l'entité Jury_member correspondant à jury_member

        :param jury_member: membre du jury dont l'entité Jury_member correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """
        with Dao.connection.cursor() as cursor:
            sql = """ DELETE jury_member WHERE id_jury_member = %s """
            cursor.execute(sql, (jury_member.id_jury_member,))
            Dao.connection.commit()
        return True
