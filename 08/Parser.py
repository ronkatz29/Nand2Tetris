"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing


class Parser:
    """
    Handles the parsing of a single .vm file, and encapsulates access to the
    input code. It reads VM commands, parses them, and provides convenient
    access to their components.
    In addition, it removes all white space and comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Gets ready to parse the input file.

        Args:
            input_file (typing.TextIO): input file.
        """
        self.input_lines = input_file.read().rstrip('\n').splitlines()
        self.input_lines = [name for name in self.input_lines if name.strip()]
        self.counter = -1

    def get_current_command(self):
        return self.input_lines[self.counter]

    def illegal_line(self, add):
        if self.input_lines[self.counter + add] == "" or \
                self.input_lines[self.counter + add][0:2] == "//":
            return True
        return False

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        # Your code goes here!
        if self.counter == (len(self.input_lines) - 2) and self.illegal_line(
                1):
            return False
        return self.counter != (len(self.input_lines) - 1)

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current
        command. Should be called only if has_more_commands() is true. Initially
        there is no current command.
        """
        while self.has_more_commands():
            self.counter += 1
            if self.illegal_line(0):
                continue
            else:
                break
                # cleans all whitespaces and comments from the current line.

        self.input_lines[self.counter] = \
            ' '.join((self.input_lines[self.counter].split('//')[0]).split())


    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current VM command.
            "C_ARITHMETIC" is returned for all arithmetic commands.
            For other commands, can return:
            "C_PUSH", "C_POP", "C_LABEL", "C_GOTO", "C_IF", "C_FUNCTION",
            "C_RETURN", "C_CALL".
        """
        arithmetic_set = {"add", "sub", "neg", "eq",
                          "gt", "lt", "and", "or", "not"}
        mem_set = {"pop": "C_POP", "push": "C_PUSH"}
        shift_set = {"shiftleft": "<<", "shiftright": ">>"}
        branching_set = {"goto", "if-goto", "label"}

        first_word = self.input_lines[self.counter].split()[0]
        if first_word in arithmetic_set:
            return "C_ARITHMETIC"
        elif first_word in mem_set:
            return mem_set[first_word]
        elif first_word in shift_set:
            return shift_set[first_word]
        elif first_word in branching_set:
            return "BRANCHING_COMMAND"
        elif first_word == "call":
            return "FUNCTION_CALL"
        elif first_word == "function":
            return "FUNCTION_START"
        elif first_word == "return":
            return "RETURN"

    def arg1(self) -> str:
        """
        Returns:
            str: the first argument of the current command. In case of
            "C_ARITHMETIC", the command itself (add, sub, etc.) is returned.
            Should not be called if the current command is "C_RETURN".
        """
        if self.command_type() == "C_ARITHMETIC" or \
                self.command_type() == "BRANCHING_COMMAND":
            return self.input_lines[self.counter].split()[0]
        return self.input_lines[self.counter].split()[1]

    def arg2(self) -> int:
        """
        Returns:
            int: the second argument of the current command. Should be
            called only if the current command is "C_PUSH", "C_POP",
            "C_FUNCTION" or "C_CALL".
        """
        return int(self.input_lines[self.counter].split()[-1])

    def arg2_branch(self):
        """
        Returns:
            int: the second argument of the current command. Should be
            called only if the current command is "C_PUSH", "C_POP",
            "C_FUNCTION" or "C_CALL".
        """
        return self.input_lines[self.counter].split()[-1]
