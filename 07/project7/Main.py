"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import os
import sys
import typing
from Parser import Parser
from CodeWriter import CodeWriter
from os.path import isdir


def translate_file(
        input_file: typing.TextIO, output_file: typing.TextIO,
        code_writer) -> None:
    """Translates a single file.

    Args:
        input_file (typing.TextIO): the file to translate.
        output_file (typing.TextIO): writes all output to this file.
    """
    # Your code goes here!
    # Note: you can get the input file's name using:
    # input_filename, input_extension = os.path.splitext(os.path.basename(input_file.name))

    real_commends = 0
    parser = Parser(input_file)
    # //need to see how to do the init function just one time in the start of the program
    while parser.has_more_commands():
        parser.advance()
        output_file.write("//" + parser.get_current_command() + "\n")
        command = parser.command_type()
        if command == "C_ARITHMETIC":
            code_writer.write_arithmetic(parser.arg1())
        elif command == "C_POP" or command == "C_PUSH":
            code_writer.write_push_pop(parser.command_type(), parser.arg1(),
                                       parser.arg2())
        elif command == "<<" or command == ">>":
            code_writer.write_shift(command)
        elif command == "BRANCHING_COMMAND":
            code_writer.write_branching_command(parser.arg1(),
                                                parser.arg2_branch())
        elif command == "FUNCTION_CALL":
            code_writer.func = parser.arg1()
            code_writer.write_call_function(parser.arg1(), parser.arg2())
        elif command == "FUNCTION_START":
            code_writer.write_start_function(parser.arg1(), parser.arg2())
        elif command == "RETURN":
            code_writer.write_return()
        output_file.write("\n")
        real_commends += 1


if "__main__" == __name__:
    # Parses the input path and calls translate_file on each input file
    if not len(sys.argv) == 2:
        sys.exit("Invalid usage, please use: VMtranslator <input path>")
    argument_path = os.path.abspath(sys.argv[1])

    if os.path.isdir(argument_path):
        files_to_translate = [
            os.path.join(argument_path, filename)
            for filename in os.listdir(argument_path)]
        output_path = os.path.join(argument_path, os.path.basename(
            argument_path))
    else:
        files_to_translate = [argument_path]
        output_path, extension = os.path.splitext(argument_path)
    output_path += ".asm"

    with open(output_path, 'w') as output_file:
        code_writer = CodeWriter(output_file)
        # code_writer.write_init()

        for input_path in files_to_translate:
            filename, extension = os.path.splitext(input_path)
            if extension.lower() != ".vm":
                continue
            with open(input_path, 'r') as input_file:
                name, ext = os.path.splitext(os.path.basename(input_file.name))
                code_writer.set_file_name(name)
                translate_file(input_file, output_file, code_writer)
