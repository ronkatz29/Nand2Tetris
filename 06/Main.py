"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import os
import sys
import typing
from SymbolTable import SymbolTable
from Parser import Parser
from Code import Code


def assemble_file(
        input_file: typing.TextIO, output_file: typing.TextIO) -> None:
    """Assembles a single file.

    Args:
        input_file (typing.TextIO): the file to assemble.
        output_file (typing.TextIO): writes all output to this file.
    """
    # generator symbol table
    symbol_table = SymbolTable()

    # first pass
    real_commends = 0
    p_one = Parser(input_file)
    while p_one.has_more_commands():
        p_one.advance()
        if p_one.command_type() == "L_COMMAND":
            if not symbol_table.contains(p_one.symbol()):
                symbol_table.add_entry(p_one.symbol(), real_commends)
        else:
            real_commends += 1

    # second pass
    input_file.seek(0)
    p_two = Parser(input_file)
    n = 16
    coder = Code()

    while p_two.has_more_commands():
        p_two.advance()
        if p_two.command_type() == "A_COMMAND":
            if p_two.symbol().isdigit():
                output_file.write(format(int(p_two.symbol()), '016b'))
            else:
                if not symbol_table.contains(p_two.symbol()):
                    symbol_table.add_entry(p_two.symbol(), n)
                    n += 1
                output_file.write(
                    format(symbol_table.get_address(p_two.symbol()),
                           '016b'))

        elif p_two.command_type() == "C_COMMAND":
            bin_num = p_two.is_shift()
            bin_num += coder.comp(p_two.comp())
            bin_num += coder.dest(p_two.dest())
            bin_num += coder.jump(p_two.jump())
            output_file.write(bin_num)

        if(p_two.has_more_commands() and p_two.command_type() != "L_COMMAND"):
            output_file.write("\n")


if "__main__" == __name__:
    # Parses the input path and calls assemble_file on each input file
    if not len(sys.argv) == 2:
        sys.exit("Invalid usage, please use: Assembler <input path>")
    argument_path = os.path.abspath(sys.argv[1])
    if os.path.isdir(argument_path):
        files_to_assemble = [
            os.path.join(argument_path, filename)
            for filename in os.listdir(argument_path)]
    else:
        files_to_assemble = [argument_path]
    for input_path in files_to_assemble:
        filename, extension = os.path.splitext(input_path)
        if extension.lower() != ".asm":
            continue
        output_path = filename + ".hack"
        with open(input_path, 'r') as input_file, \
                open(output_path, 'w') as output_file:
            assemble_file(input_file, output_file)
