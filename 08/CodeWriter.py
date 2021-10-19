"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

COMMENT = '//'
SPACE = ''
NEWLINE = '\n'
TAB = '\t'

TEMP = "R5"
LCL = 'LCL'
ARG = "ARG"
CONST = 'constant'
STAT = 'static'
THIS = "THIS"
THAT = "THAT"

# commands:
ZERO = "0"
ONE = 1
FRAME_SIZE = "5"
MINUS_ONE = '-1'
D = 'D'
A = 'A'
M = 'M'
NOT = '!'
MINUS = '-'
PLUS = '+'
AND = '&'
OR = '|'
EQUALS = '='
GOTO = '@'
SP = 'SP'

TRUE = "-1"
FALSE = "0"




class CodeWriter:
    """Translates VM commands into Hack assembly code."""

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.

        Args:
            output_stream (typing.TextIO): output stream.
        """
        self.out_file = output_stream
        self.counter = 0  # counter for the jump commands

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is 
        started.

        Args:
            filename (str): The name of the VM file.
        """
        print("The translation of " + filename + " is started")

    def write_init(self):
        self.out_file.write(TAB + "@256" + NEWLINE)
        self.out_file.write(TAB + "D=A" + NEWLINE)
        self.out_file.write(TAB + "@" +SP + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)
        self.write_call_function('Sys.init', '0')

    def write_shift(self, command):
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "M=M" + command + NEWLINE)

    def write_arithmetic(self, command: str) -> None:
        """Writes the assembly code that is the translation of the given 
        arithmetic command.

        Args:
            command (str): an arithmetic command.
        """
        # Your code goes here!
        if command == "add":
            self.add_sub_or_and_to_asm(PLUS)
        elif command == "sub":
            self.add_sub_or_and_to_asm(MINUS)
        elif command == "neg":
            self.neg_to_asm()
        # elif command == "eq"
        elif command == "and":
            self.add_sub_or_and_to_asm(AND)
        elif command == "or":
            self.add_sub_or_and_to_asm(OR)
        elif command == "not":
            self.not_to_asm()
        elif command == "eq" or command == "gt" or command == "lt":
            self.eq_gt_lt_asm(command, str(self.counter))
            self.counter += 1

    def eq_gt_lt_asm(self, command, counter):
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@FIRST_PLUS_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JGT" + NEWLINE)
        self.out_file.write(TAB + "@FIRST_MINUS_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JLT" + NEWLINE)
        self.out_file.write(TAB + "@SAME_SIGN_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        self.out_file.write("(FIRST_PLUS_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "A=A-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@DIF_SIGN_LT_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JLT" + NEWLINE)
        self.out_file.write(TAB + "@SAME_SIGN_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        self.out_file.write("(DIF_SIGN_LT_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "AM=M-1" + NEWLINE)
        self.out_file.write(TAB + "A=A-1" + NEWLINE)
        bool_opt = FALSE
        if command == "lt":
            bool_opt = TRUE
        self.out_file.write(TAB + "M=" + bool_opt + NEWLINE)
        self.out_file.write(TAB + "@CON_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        self.out_file.write("(FIRST_MINUS_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "A=A-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@DIF_SIGN_GT_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JGT" + NEWLINE)
        self.out_file.write(TAB + "@SAME_SIGN_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        self.out_file.write("(DIF_SIGN_GT_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "AM=M-1" + NEWLINE)
        self.out_file.write(TAB + "A=A-1" + NEWLINE)
        bool_opt = FALSE
        if command == "gt":
            bool_opt = TRUE
        self.out_file.write(TAB + "M=" + bool_opt + NEWLINE)
        self.out_file.write(TAB + "@CON_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        self.out_file.write("(SAME_SIGN_" + counter + ")" + NEWLINE)
        self.add_sub_or_and_to_asm(MINUS)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@GRATER_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JGT" + NEWLINE)
        self.out_file.write(TAB + "@LOWER_" + counter + NEWLINE)
        self.out_file.write(TAB + "D;JLT" + NEWLINE)
        # case x-y = 0
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        if command == "eq":
            self.out_file.write(TAB + "M=" + TRUE + NEWLINE)
        else:
            self.out_file.write(TAB + "M=" + FALSE + NEWLINE)
        self.out_file.write(TAB + "@CON_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)
        # case x-y < 0
        self.out_file.write("(GRATER_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        if command == "gt":
            self.out_file.write(TAB + "M=" + TRUE + NEWLINE)
        else:
            self.out_file.write(TAB + "M=" + FALSE + NEWLINE)
        self.out_file.write(TAB + "@CON_" + counter + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)
        # case x-y > 0
        self.out_file.write("(LOWER_" + counter + ")" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        if command == "lt":
            self.out_file.write(TAB + "M=" + TRUE + NEWLINE)
        else:
            self.out_file.write(TAB + "M=" + FALSE + NEWLINE)

        self.out_file.write("(CON_" + counter + ")" + NEWLINE)

    def not_to_asm(self):
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "M=!M" + NEWLINE)

    def neg_to_asm(self):
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "A=M-1" + NEWLINE)
        self.out_file.write(TAB + "M=-M" + NEWLINE)
        self.out_file.write(TAB + "D=A+1" + NEWLINE)
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

    def add_sub_or_and_to_asm(self, sign):
        self.out_file.write(TAB + "@SP" + NEWLINE)
        self.out_file.write(TAB + "AM=M-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "A=A-1" + NEWLINE)
        self.out_file.write(TAB + "M=M" + sign + "D" + NEWLINE)

    def write_push_pop(self, command: str, segment: str, index: int) -> None:
        """Writes the assembly code that is the translation of the given 
        command, where command is either C_PUSH or C_POP.

        Args:
            command (str): "C_PUSH" or "C_POP".
            segment (str): the memory segment to operate on.
            index (int): the index in the memory segment.
        """
        ram_p = {"constant": str(index), "local": "LCL", "temp": TEMP,
                 "argument": "ARG", "this": "THIS", "that": "THAT",
                 "static": "stat_" + str(index), "pointer": "THIS"}
        seg = ram_p[segment]

        if segment == "static":
            self.static_pointer_push_pop(command, seg)

        elif segment == "pointer":
            if index == 1:
                seg = "THAT"
            self.static_pointer_push_pop(command, seg)
        else:
            if command == "C_PUSH":
                self.out_file.write(TAB + "@" + str(index) + NEWLINE)
                self.out_file.write(TAB + "D=A" + NEWLINE)
                if segment != "constant":
                    self.out_file.write(TAB + "@" + seg + NEWLINE)
                    self.out_file.write(TAB + "A=M+D" + NEWLINE)
                    self.out_file.write(TAB + "D=M" + NEWLINE)
                self.push_to_stack()

            if command == "C_POP":
                self.out_file.write(TAB + "@" + str(index) + NEWLINE)
                self.out_file.write(TAB + "D=A" + NEWLINE)
                self.out_file.write(TAB + "@" + seg + NEWLINE)
                if segment != "temp":
                    self.out_file.write(TAB + "D=M+D" + NEWLINE)
                else:
                    self.out_file.write(TAB + "D=A+D" + NEWLINE)
                self.pop_to_segment()

    def static_pointer_push_pop(self, command, seg):
        if command == "C_PUSH":
            self.out_file.write(TAB + "@" + seg + NEWLINE)
            self.out_file.write(TAB + "D=M" + NEWLINE)
            self.push_to_stack()
        else:
            self.out_file.write(TAB + "@" + seg + NEWLINE)
            self.out_file.write(TAB + "D=A" + NEWLINE)
            self.pop_to_segment()

    def push_to_stack(self):
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "A=M" + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "M=M+1" + NEWLINE)

    def pop_to_segment(self):
        self.out_file.write(TAB + "@addr" + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "AM=M-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@addr" + NEWLINE)
        self.out_file.write(TAB + "A=M" + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

    def write_branching_command(self, command, label):
        if command == "goto":
            self.out_file.write(TAB + "@" + label + NEWLINE)
            self.out_file.write(TAB + "0;JMP" + NEWLINE)
        elif command == "if-goto":
            self.out_file.write(TAB + "@" + SP + NEWLINE)
            self.out_file.write(TAB + "AM=M-1" + NEWLINE)
            self.out_file.write(TAB + "D=M" + NEWLINE)
            self.out_file.write(TAB + "@" + label + NEWLINE)
            self.out_file.write(TAB + "D;JNE" + NEWLINE)
        elif command == "label":
            self.out_file.write("(" + label + ")" + NEWLINE)

    def write_call_function(self, func_name, num_arguments):
        dic = ["RETURN_ADDRESS_" + str(self.counter), LCL, ARG, THIS, THAT]

        # saving the call frame
        for address in dic:
            self.out_file.write(TAB + "@" + address + NEWLINE)
            self.out_file.write(TAB + "D=M" + NEWLINE)
            self.push_to_stack()

        # ARG = SP - 5 - nargs
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + FRAME_SIZE + NEWLINE)
        self.out_file.write(TAB + "D=D-A" + NEWLINE)
        self.out_file.write(TAB + "@" + str(num_arguments) + NEWLINE)
        self.out_file.write(TAB + "D=D-A" + NEWLINE)
        self.out_file.write(TAB + "@" + ARG + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # lcl = sp
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + LCL + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # goto function name
        self.out_file.write(TAB + "@" + func_name + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

        # declare a label for the return address
        self.out_file.write("(" + dic[0] + ")" + NEWLINE)
        self.counter += 1

    def write_start_function(self, func_name, num_arguments):
        self.out_file.write("(" + func_name + ")" + NEWLINE)
        self.out_file.write(TAB + "@" + ZERO + NEWLINE)
        self.out_file.write(TAB + "D=A" + NEWLINE)
        for i in range(num_arguments):
            self.push_to_stack()

    def write_return(self):
        # endframe = LCL
        self.out_file.write(TAB + "@" + LCL + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + "endframe"  + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # get the return address
        # retAddr = *(endFream - 5)
        self.out_file.write(TAB + "@" + "endframe"   + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + FRAME_SIZE + NEWLINE)
        self.out_file.write(TAB + "D=D-A" + NEWLINE)
        self.out_file.write(TAB + "A=D" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + "retaddr"  + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # *ARG = POP()
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "AM=M-1" + NEWLINE)
        self.out_file.write(TAB + "D=M" + NEWLINE)
        self.out_file.write(TAB + "@" + ARG + NEWLINE)
        self.out_file.write(TAB + "A=M" + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # SP = ARG + 1
        self.out_file.write(TAB + "@" + ARG + NEWLINE)
        self.out_file.write(TAB + "D=M+1" + NEWLINE)
        self.out_file.write(TAB + "@" + SP + NEWLINE)
        self.out_file.write(TAB + "M=D" + NEWLINE)

        # restore caller frame
        dic = [THAT, THIS, ARG ,LCL]
        counter = 1
        for address in dic:
            self.out_file.write(TAB + "@" + "endframe" + NEWLINE)
            self.out_file.write(TAB + "D=M" + NEWLINE)
            self.out_file.write(TAB + "@" + str(counter) + NEWLINE)
            self.out_file.write(TAB + "D=D-A" + NEWLINE)
            self.out_file.write(TAB + "A=D" + NEWLINE)
            self.out_file.write(TAB + "D=M" + NEWLINE)
            self.out_file.write(TAB + "@" + address + NEWLINE)
            self.out_file.write(TAB + "M=D" + NEWLINE)
            counter += 1

        # goto return address
        self.out_file.write(TAB + "@" + "retaddr" + NEWLINE)
        self.out_file.write(TAB + "0;JMP" + NEWLINE)

    def close(self) -> None:
        """Closes the output file."""
        self.out_file.close()
