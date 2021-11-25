"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

PUSH = "push "
POP = "pop "
SPACE = " "
NEWLINE = "\n"
LABEL = "label "
GOTO = "goto "
IF_GOTO = "if-goto "
CALL = "call "
FUNCTION = "function "
RETURN = "return"
SEGMENTS = {"var": "local", "field": "this"}

class VMWriter:
    """
    Writes VM commands into a file. Encapsulates the VM command syntax.
    """
    def __init__(self, output_stream: typing.TextIO) -> None:
        """Creates a new file and prepares it for writing VM commands."""
        self.vm_out = output_stream

    def write_push(self, segment: str, index: int) -> None:
        """Writes a VM push command.

        Args:
            segment (str): the segment to push to, can be "CONST", "ARG", 
            "LOCAL", "STATIC", "THIS", "THAT", "POINTER", "TEMP"
            index (int): the index to push to.
        """
        if segment in SEGMENTS:
            segment = SEGMENTS[segment]
        self.vm_out.write(PUSH + segment + SPACE + str(index) + NEWLINE)

    def write_pop(self, segment: str, index: int) -> None:
        """Writes a VM pop command.

        Args:
            segment (str): the segment to pop from, can be "CONST", "ARG", 
            "LOCAL", "STATIC", "THIS", "THAT", "POINTER", "TEMP".
            index (int): the index to pop from.
        """
        if segment in SEGMENTS:
            segment = SEGMENTS[segment]

        self.vm_out.write(POP + segment + SPACE + str(index) + NEWLINE)


    def write_arithmetic(self, command: str) -> None:
        """Writes a VM arithmetic command.

        Args:
            command (str): the command to write, can be "ADD", "SUB", "NEG", 
            "EQ", "GT", "LT", "AND", "OR", "NOT".
        """
        self.vm_out.write(command.lower() + NEWLINE)

    def write_label(self, label: str) -> None:
        """Writes a VM label command.

        Args:
            label (str): the label to write.
        """
        self.vm_out.write(LABEL + label + NEWLINE)

    def write_goto(self, label: str) -> None:
        """Writes a VM goto command.

        Args:
            label (str): the label to go to.
        """
        self.vm_out.write(GOTO + label + NEWLINE)

    def write_if(self, label: str) -> None:
        """Writes a VM if-goto command.

        Args:
            label (str): the label to go to.
        """
        self.vm_out.write(IF_GOTO + label + NEWLINE)

    def write_call(self, name: str, n_args: int) -> None:
        """Writes a VM call command.

        Args:
            name (str): the name of the function to call.
            n_args (int): the number of arguments the function receives.
        """
        self.vm_out.write(CALL + name + SPACE + str(n_args) + NEWLINE)

    def write_function(self, name: str, n_locals: int) -> None:
        """Writes a VM function command.

        Args:
            name (str): the name of the function.
            n_locals (int): the number of local variables the function uses.
        """
        self.vm_out.write(FUNCTION + name + SPACE + str(n_locals) + NEWLINE)

    def write_return(self) -> None:
        """Writes a VM return command."""
        self.vm_out.write(RETURN + NEWLINE)

