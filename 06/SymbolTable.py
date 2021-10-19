"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""


class SymbolTable:
    """
    A symbol table that keeps a correspondence between symbolic labels and 
    numeric addresses.
    """

    def __init__(self) -> None:
        """Creates a new symbol table initialized with all the predefined symbols
        and their pre-allocated RAM addresses, according to section 6.2.3 of the
        book.
        """
        # Your code goes here!
        self.table = {}
        for i in range(16):
            self.table["R" + str(i)] = i
        self.table["SCREEN"] = 16384
        self.table["KBD"] = 24576
        others = ["SP", "LCL", "ARG", "THIS", "THAT"]
        for i in range(5):
            self.table[others[i]] = i

    def add_entry(self, symbol: str, address: int) -> None:
        """Adds the pair (symbol, address) to the table.

        Args:
            symbol (str): the symbol to add.
            address (int): the address corresponding to the symbol.
        """
        # Your code goes here!
        self.table[symbol] = address

    def contains(self, symbol: str) -> bool:
        """Does the symbol table contain the given symbol?

        Args:
            symbol (str): a symbol.

        Returns:
            bool: True if the symbol is contained, False otherwise.
        """
        # Your code goes here!
        return symbol in self.table

    def get_address(self, symbol: str) -> int:

        """Returns the address associated with the symbol.

        Args:
            symbol (str): a symbol.
        Returns:
            int: the address associated with the symbol.
        """
        # Your code goes here!
        if self.contains(symbol):
            return self.table[symbol]
        return -1