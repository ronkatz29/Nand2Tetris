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
from os.path import  isdir


def translate_file(
        input_file: typing.TextIO, output_file: typing.TextIO) -> None:
    """Translates a single file.

    Args:
        input_file (typing.TextIO): the file to translate.
        output_file (typing.TextIO): writes all output to this file.
    """
    # Your code goes here!
    # Note: you can get the input file's name using:
    # input_filename, input_extension = os.path.splitext(os.path.basename(input_file.name))

    real_commends = 0
    p = Parser(input_file)
    w = CodeWriter(output_file)
    w.set_file_name(filename)


# //need to see how to do the init function just one time in the start of the program


    if isdir(sys.argv[1]) and :
        w.write_init()
        print("ron is a mother fucker")





    while p.has_more_commands():
        p.advance()
        output_file.write("//" + p.get_current_command() + "\n")
        command = p.command_type()
        if command == "C_ARITHMETIC":
            w.write_arithmetic(p.arg1())
        elif command == "C_POP" or command == "C_PUSH":
            w.write_push_pop(p.command_type(), p.arg1(), p.arg2())
        elif command == "<<" or command == ">>":
            w.write_shift(command)
        elif command == "BRANCHING_COMMAND":
            w.write_branching_command(p.arg1(), p.arg2_branch())
        elif command == "FUNCTION_CALL":
            w.write_call_function(p.arg1(), p.arg2())
        elif command == "FUNCTION_START":
            w.write_start_function(p.arg1(), p.arg2())
        elif command == "RETURN":
            w.write_return()
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
        for input_path in files_to_translate:
            filename, extension = os.path.splitext(input_path)
            if extension.lower() != ".vm":
                continue
            with open(input_path, 'r') as input_file:
                translate_file(input_file, output_file)
