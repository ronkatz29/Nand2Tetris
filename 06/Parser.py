"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing


class Parser:
    """Encapsulates access to the input code. Reads and assembly language 
    command, parses it, and provides convenient access to the commands 
    components (fields and symbols). In addition, removes all white space and 
    comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Opens the input file and gets ready to parse it.

        Args:
            input_file (typing.TextIO): input file.
        """
        # Your code goes here!
        # A good place to start is
        self.input_lines = input_file.read().rstrip('\n').splitlines()
        self.input_lines = [name for name in self.input_lines if name.strip()]
        self.counter = -1

    def illegal_line(self):
        if self.input_lines[self.counter] == "" or \
                self.input_lines[self.counter][0:2] == "//":
            return True
        return False

    def illegal_line_next(self):
        if self.input_lines[self.counter + 1 ] == "" or \
                self.input_lines[self.counter + 1][0:2] == "//":
            return True
        return False


    def has_more_commands(self) -> bool:
        """Are there more commands in the input?
        Returns:
            bool: True if there are more commands, False otherwise.
        """
        # Your code goes here!
        if self.counter == (len(self.input_lines) - 2) and self.illegal_line_next():
            return False
        return self.counter != (len(self.input_lines) - 1)


    def advance(self) -> None:
        """Reads the next command from the input and makes it the current command.
        Should be called only if has_more_commands() is true.
        """
        # Your code goes here!
        while self.has_more_commands():
            self.counter += 1
            if self.illegal_line():
                continue
            else:
                break
                # cleans all whitespaces and comments from the current line.

        self.input_lines[self.counter] = \
            ''.join((self.input_lines[self.counter].split('//')[0]).split())



    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current command:
            "A_COMMAND" for @Xxx where Xxx is either a symbol or a decimal number
            "C_COMMAND" for dest=comp;jump
            "L_COMMAND" (actually, pseudo-command) for (Xxx) where Xxx is a symbol
        """
        if '@' == self.input_lines[self.counter][0]:
            return "A_COMMAND"
        elif '(' == self.input_lines[self.counter][0] and \
                ')' == self.input_lines[self.counter][-1]:
            return "L_COMMAND"
        elif '=' in self.input_lines[self.counter] or \
                ';' in self.input_lines[self.counter]:
            return "C_COMMAND"

    def symbol(self) -> str:
        """
        Returns:
            str: the symbol or decimal Xxx of the current command @Xxx or
            (Xxx). Should be called only when command_type() is "A_COMMAND" or
            "L_COMMAND".
        """
        if '@' == self.input_lines[self.counter][0]:
            return self.input_lines[self.counter][1:]
        else:
            return self.input_lines[self.counter][1:-1]

    def dest(self) -> str:
        """
        Returns:
            str: the dest mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        if '=' in self.input_lines[self.counter]:
            return self.input_lines[self.counter].split('=')[0]
        else:
            return 'null'

    def comp(self) -> str:
        """
        Returns:
            str: the comp mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        temp = self.input_lines[self.counter]
        if '=' in temp:
            temp = temp.split('=')[-1]
        if ';' in temp:
            temp = temp.split(';')[0]
        return temp

    def jump(self) -> str:
        """
        Returns:
            str: the jump mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        if ';' in self.input_lines[self.counter]:
            return self.input_lines[self.counter].split(';')[-1]
        else:
            return 'null'

    def is_shift(self):
            if "<<" in self.input_lines[self.counter] or \
                    ">>" in self.input_lines[self.counter] :
                return "101"
            return "111"




