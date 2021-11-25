"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
from JackTokenizer import *
IDENTIFIERS = ["STATIC", "FIELD", "ARG", "VAR"]
NONE = "None"


class SymbolTable:
    """A symbol table that associates names with information needed for Jack
    compilation: symbol_type, kind and running index. The symbol table has two nested
    scopes (class/subroutine).
    """

    def __init__(self) -> None:
        """Creates a new empty symbol table."""
        self.class_scope = {}
        self.method_scope = {}
        self.index_counter = {STATIC: -1, FIELD: -1, ARGUMENT: -1, VAR: -1}

    def print_class_table(self):
        print(self.class_scope)

    def check_existance(self, name: str) -> bool:
        return name in self.class_scope or name in self.method_scope


    def start_subroutine(self) -> None:
        """Starts a new subroutine scope (i.e., resets the subroutine's 
        symbol table).
        """
        self.method_scope.clear()
        self.index_counter[ARGUMENT] = -1
        self.index_counter[VAR] = -1


    def define(self, name: str, symbol_type: str, kind: str) -> None:
        """Defines a new identifier of a given name, symbol_type and kind and assigns 
        it a running index. "STATIC" and "FIELD" identifiers have a class scope, 
        while "ARG" and "VAR" identifiers have a subroutine scope.

        Args:
            name (str): the name of the new identifier.
            symbol_type (str): the symbol_type of the new identifier.
            kind (str): the kind of the new identifier, can be:
            "STATIC", "FIELD", "ARG", "VAR".
        """
        self.index_counter[kind] += 1
        num = self.index_counter[kind]
        if kind == STATIC or kind == FIELD:
            # self.class_scope[name] = symbol
            self.class_scope[name] = (name, symbol_type, kind, num)
        else:
            # self.method_scope[name] = symbol
            self.method_scope[name] = (name, symbol_type, kind, num)


    def var_count(self, kind: str) -> int:
        """
        Args:
            kind (str): can be "STATIC", "FIELD", "ARG", "VAR".

        Returns:
            int: the number of variables of the given kind already defined in 
            the current scope.
        """
        return self.index_counter[kind] +1

    def kind_of(self, name: str) -> str:
        """
        Args:
            name (str): name of an identifier.

        Returns:
            str: the kind of the named identifier in the current scope, or None
            if the identifier is unknown in the current scope.
        """
        if name in self.method_scope:
            return self.method_scope[name][2]
        if name in self.class_scope:
            return self.class_scope[name][2]
        return NONE

    def type_of(self, name: str) -> str:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            str: the symbol_type of the named identifier in the current scope.
        """
        if name in self.method_scope:
            return self.method_scope[name][1]
        if name in self.class_scope:
            return self.class_scope[name][1]
        return NONE

    def index_of(self, name: str) -> int:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            int: the index assigned to the named identifier.
        """
        if name in self.method_scope:
            return self.method_scope[name][3]
        if name in self.class_scope:
            return self.class_scope[name][3]
        return 0
