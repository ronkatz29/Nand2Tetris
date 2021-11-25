"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""

import typing
from SymbolTable import *

TAB = "\t"
EQUAL = "="
NEWLINE = "\n"
SEMICOLON = ";"

EXPRESSION_LIST_XML_START = "<expressionList>"
EXPRESSION_LIST_XML_END = "</expressionList>"

SUBROUTINE_BODY_XML_START = "<subroutineBody>"
SUBROUTINE_BODY_XM_END = "</subroutineBody>"

LET_XML_START = "<letStatement>"
LET_XML_END = "</letStatement>"

CLASS_VAR_XML_START = "<classVarDec>"
CLASS_VAR_XML_END = "</classVarDec>"

SYMBOL_XML_START = "<symbol> "
SYMBOL_XML_END = " </symbol>"

VAR_DEC_XML_START = "<varDec>"
VAR_DEC_XML_END = "</varDec>"

CLASS_XML_START = "<class>"
CLASS_XML_END = "</class>"

KEYWORD_XML_START = "<keyword> "
KEYWORD_XML_END = " </keyword>"

IDENTIFIER_XML_START = "<identifier> "
IDENTIFIER_XML_END = " </identifier>"

INT_CONST_XML_START = "<integerConstant> "
INT_CONST_XML_END = " </integerConstant>"

STRING_CONST_XML_START = "<stringConstant> "
STRING_CONST_XML_END = " </stringConstant>"

CLASS_VAR_DEC_XML_START = "<classVarDec>"
CLASS_VAR_DEC_XML_END = "</classVarDec>"

DO_BEG_XML_START = "<doStatement>"
DO_XML_END = "</doStatement>"

EXPRESSION_XML_START = "<expression>"
EXPRESSION_XML_END = "</expression>"

TERM_XML_START = "<term>"
TERM_XML_END = "</term>"

WHILE_XML_START = "<whileStatement>"
WHILE_XML_END = "</whileStatement>"

STATEMENT_XML_START = "<statements>"
STATEMENT_XML_END = "</statements>"

RETURN_XML_START = "<returnStatement>"
RETURN_XML_END = "</returnStatement>"

IF_XML_START = "<ifStatement>"
IF_XML_END = "</ifStatement>"

SUBROUTINE_DEC_XML_START = "<subroutineDec>"
SUBROUTINE_DEC_XML_END = "</subroutineDec>"

PARAMETERS_LIST_XML_START = "<parameterList>"
PARAMETERS_LIST_XML_END = "</parameterList>"

STATEMENTS = [LET, DO, IF, WHILE, RETURN]
STATEMENTS_UP = [LET_UP, DO_UP, IF_UP, WHILE_UP, RETURN_UP]

KEYWORD_CONST = [FALSE, NULL, THIS, TRUE]
UNARY_OP_SET = {MINUS, APPROXIMATELY, SHIFT_LEFT, SHIFT_RIGHT}
OP_SYMBOLS_SET = {"&", "|", "<", ">", "=", "-", "+", "*", "/", "&lt;",
                   "&gt;", "&amp;"}
OP_TABLE = {"+": "add", "-": "sub", "&amp;": "and", "|": "or", "&lt;": "lt",
    "&gt;": "gt", "=": "eq"}

OP_TABLE_DIVIDE_MULT = {"*": "Math.multiply",  "/": "Math.divide"}

UNARY_OP = { "~": "not", "-": "neg", "^": "shiftleft", "#": "shiftright"}
VAR_DEC_BEGINNING_SET = {"STATIC", "FIELD"}

METHOD = "METHOD"
CONSTRUCTOR = "CONSTRUCTOR"
FUNCTION = "FUNCTION"
SUB_ROUTINE_DEC_SET = {"FUNCTION", "CONSTRUCTOR", "METHOD"}
SPECIAL_TERM_SET = {ROUND_BRACKETS_LEFT, SQUARE_BRACKETS_LEFT, DOT}


class CompilationEngine:
    """Gets input from a JackTokenizer and emits its parsed structure into an
    output stream.
    """

    def __init__(self, jack_tokenizer, vm_writer) -> None:
        self.jack_tokenizer = jack_tokenizer
        self.vm_writer = vm_writer
        self.symbol_table = SymbolTable()
        self.class_name = self.init_name()
        self.if_counter = -1
        self.while_counter = -1


    # returns the name class and advancing to the first class argument
    def init_name(self):
        self.advance()  # Class -> class name
        class_name = self.jack_tokenizer.cur_token  # saving class name
        self.advance()  # class name -> {
        self.advance()  # { # -> first var or methode
        return class_name

    def compile_class(self) -> None:
        """Compiles a complete class."""
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in VAR_DEC_BEGINNING_SET:
            self.compile_var_line()
            self.advance()  # ; -> next var or methode

        # class methods\functions\constructors
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in SUB_ROUTINE_DEC_SET:
            self.compile_subroutine()
            self.symbol_table.start_subroutine()
            self.if_counter = -1
            self.while_counter = -1
            self.advance() #} ------> next methode|function or }


    def compile_var_line(self) -> None:
        """Compiles a static declaration or a field declaration."""
        kind = self.jack_tokenizer.cur_token  # kind = field\static\local
        self.advance()  # kind -> type
        symbol_type = self.jack_tokenizer.cur_token  # type = int\bool\char
        self.advance()  # type -> name
        while self.jack_tokenizer.cur_token != SEMICOLON:
            if self.jack_tokenizer.token_type() == IDENTIFIER:
                self.symbol_table.define(self.jack_tokenizer.cur_token,
                                         symbol_type, kind)
            self.advance()

    def compile_subroutine(self) -> None:
        """Compiles a complete method, function, or constructor."""
        sub_kind = self.jack_tokenizer.cur_token
        self.advance()  # CONSTRUCTOR/METHOD/FUNCTION ---> return type
        if sub_kind == CONSTRUCTOR.lower():
            self.compile_constructor()
        if sub_kind == METHOD.lower():
            self.compile_methode()
        if sub_kind == FUNCTION.lower():
            self.compile_function()

        # handling the statements

    def compile_constructor(self):
        self.advance()
        self.advance()  # advencing until the start of the argument list
        self.compile_parameter_list()
        # entering the lcl veliubals in the symbol table
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.cur_token == VAR:
            self.compile_var_line()
            self.advance()  # ; -> next var or statement
        self.vm_writer.write_function(self.class_name + ".new",
                                      self.symbol_table.var_count(VAR))

        num_field_arg = self.symbol_table.var_count(FIELD)
        if num_field_arg > 0:
            self.vm_writer.write_push("constant", self.symbol_table.var_count(FIELD))
            self.vm_writer.write_call("Memory.alloc", 1)
            self.vm_writer.write_pop("pointer", 0)

        self.compile_statements()

    def compile_methode(self):
        self.symbol_table.define("this", self.class_name, ARGUMENT)
        return_type = self.jack_tokenizer.cur_token
        self.advance()  # return_type -----> func_name
        func_name = self.jack_tokenizer.cur_token
        self.advance()  # func_name -----> (
        self.compile_parameter_list()
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.cur_token == VAR:
            self.compile_var_line()
            self.advance()  # ; -> next var or statement
        self.vm_writer.write_function(self.class_name + DOT + func_name,
                                      self.symbol_table.var_count(VAR))
        self.vm_writer.write_push(ARGUMENT, 0)
        self.vm_writer.write_pop("pointer", 0)
        self.compile_statements()

    def compile_function(self):
        return_type = self.jack_tokenizer.cur_token
        self.advance() # return_type -----> func_name
        func_name = self.jack_tokenizer.cur_token
        self.advance()  # func_name -----> (
        self.compile_parameter_list()
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.cur_token == VAR:
            self.compile_var_line()
            self.advance()  # ; -> next var or statement
        self.vm_writer.write_function(self.class_name + DOT + func_name,
                                      self.symbol_table.var_count(VAR))
        self.compile_statements()

    def compile_parameter_list(self) -> None:
        """Compiles a (possibly empty) parameter list, not including the
        enclosing "()".
        """
        self.advance()  # ( ----> first arg
        while self.jack_tokenizer.cur_token != ROUND_BRACKETS_RIGHT:
            symbol_type = self.jack_tokenizer.cur_token  # type = int\bool\char
            self.advance()  # type argument -----> name argument
            name = self.jack_tokenizer.cur_token
            self.symbol_table.define(name, symbol_type, ARGUMENT)
            self.advance()  # name argument-----> , | )
            if self.jack_tokenizer.cur_token == COMMA:
                self.advance()  # , ----->  type argument

        self.advance()  # ) ----> {
        self.advance()  # { ----> var| statmentes

    def compile_statements(self) -> None:
        """Compiles a sequence of statements, not including the enclosing 
        "{}".
        """

        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in STATEMENTS_UP:

            cur_statement = self.jack_tokenizer.keyword()
            if cur_statement == DO_UP:
                self.compile_do()
            elif cur_statement == IF_UP:
                self.if_counter += 1
                self.compile_if()
            elif cur_statement == LET_UP:
                self.compile_let()
            elif cur_statement == WHILE_UP:
                self.while_counter += 1
                self.compile_while()
            elif cur_statement == RETURN_UP:
                self.compile_return()

    def compile_do(self) -> None:
        """Compiles a do statement."""

        self.advance() # DO ----> IDENTIFIER
        self.subroutine_call(self.jack_tokenizer.next_token)
        self.vm_writer.write_pop("temp", 0)
        self.advance() # ) -----> ;
        self.advance() # ; ------> next statement

    def compile_let(self) -> None:
        """Compiles a let statement."""

        self.advance() #let ----> identifier
        cur_var_name = self.jack_tokenizer.cur_token #saving the current variable
        cur_var_seg = self.symbol_table.kind_of(cur_var_name) #saving the current variable sement

        if cur_var_seg == FIELD: #HANDELLING FIELD SEGMENTS
            cur_var_seg = THIS

        cur_var_index = self.symbol_table.index_of(cur_var_name) #saving the current variable sement index

        # # HANDLE  "["
        flag = False
        if self.jack_tokenizer.is_next_symbol() and \
                self.jack_tokenizer.next_token == SQUARE_BRACKETS_LEFT:
            cur_token = self.jack_tokenizer.cur_token
            self.advance() # identifier -----> [
            self.advance() # [ -----> expression
            self.compile_expression()
            self.vm_writer.write_push(self.symbol_table.kind_of(cur_token),
                                      self.symbol_table.index_of(cur_token))
            self.vm_writer.write_arithmetic("ADD")
            flag = True

        self.advance() # identifier\] ----> =
        self.advance() # = ----> EXPRESSION
        self.compile_expression()

        if flag:
            self.vm_writer.write_pop("temp", 0)
            self.vm_writer.write_pop("pointer", 1)
            self.vm_writer.write_push("temp", 0)
            self.vm_writer.write_pop("that", 0)

        else:
            self.vm_writer.write_pop(cur_var_seg, cur_var_index)
        self.advance() #; ----> next statement

    def compile_return(self) -> None:
        """Compiles a return statement."""
        self.advance() # return ----> ; or expression

        if self.jack_tokenizer.cur_token != SEMICOLON:
            self.compile_expression() #need to make sure that compile expression ends on ;

        else:
            self.vm_writer.write_push("constant", 0)
        self.vm_writer.write_return()
        self.advance() # ; ----> }

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""

        inside_if_counter = self.if_counter
        self.advance()  # if ---> (
        self.advance()  # ( ---> start expression
        self.compile_expression()
        self.vm_writer.write_if("IF_TRUE"+str(inside_if_counter))
        self.vm_writer.write_goto("IF_FALSE" + str(inside_if_counter))
        self.vm_writer.write_label("IF_TRUE" + str(inside_if_counter))
        self.advance() #) ------> {
        self.advance() #{ ------> start of the if statement
        self.compile_statements()


        if self.jack_tokenizer.next_token == ELSE:
            self.vm_writer.write_goto("IF_END" + str(inside_if_counter))
            self.vm_writer.write_label("IF_FALSE" + str(inside_if_counter))
            self.advance() # ----> else
            self.advance() #else ----> {
            self.advance()  #{ ------> start of the else statement
            self.compile_statements()
            self.vm_writer.write_label("IF_END" + str(inside_if_counter))

        else:
            self.vm_writer.write_label("IF_FALSE" + str(inside_if_counter))

        self.advance() # } ------> next statement \ }

    def compile_while(self) -> None:
        """Compiles a while statement."""

        inside_while_counter = self.while_counter
        self.vm_writer.write_label("WHILE_EXP" + str(inside_while_counter))

        self.advance()  # While ---> (
        self.advance()  # ( ---> start expression
        self.compile_expression()
        self.vm_writer.write_arithmetic("NOT")
        self.vm_writer.write_if("WHILE_END"+str(inside_while_counter))

        self.advance()  # ) ------> {
        self.advance()  # { ------> start of the if statement
        self.compile_statements()

        self.vm_writer.write_goto("WHILE_EXP" + str(inside_while_counter))
        self.vm_writer.write_label("WHILE_END" + str(inside_while_counter))

        self.advance() # } ------> next statement \ }

    def compile_expression(self) -> None:
        """Compiles an expression."""

        self.compile_term()
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == SYMBOL and \
                self.jack_tokenizer.symbol() in OP_SYMBOLS_SET:

            op_symbol = self.jack_tokenizer.symbol()
            self.advance() # op_symbol ----> term
            self.compile_term()
            if op_symbol in OP_TABLE:
                self.vm_writer.write_arithmetic(OP_TABLE[op_symbol])
            else:
                self.vm_writer.write_call(OP_TABLE_DIVIDE_MULT[op_symbol], 2)

    def compile_term(self) -> None:
        """Compiles a term.
        This routine is faced with a slight difficulty when
        trying to decide between some of the alternative parsing rules.
        Specifically, if the current token is an identifier, the routing must
        distinguish between a variable, an array entry, and a subroutine call.
        A single look-ahead token, which may be one of "[", "(", or "." suffices
        to distinguish between the three possibilities. Any other token is not
        part of this term and should not be advanced over.
        """

        cur_token = self.jack_tokenizer.cur_token
        next_token = self.jack_tokenizer.next_token
        cur_token_type = self.jack_tokenizer.token_type()

        # = (epression)
        if cur_token_type == SYMBOL and \
                self.jack_tokenizer.symbol() == ROUND_BRACKETS_LEFT:

            self.advance() # ( -----> expressin start
            self.compile_expression()
            self.advance()# ) -----> term start / ;

        # UNARY + (term)\term
        elif cur_token_type == SYMBOL and \
                self.jack_tokenizer.symbol() in UNARY_OP_SET:

            op_symbol = self.jack_tokenizer.symbol()
            self.advance() # -\~ ----> (\term
            self.compile_term()
            self.vm_writer.write_arithmetic(UNARY_OP[op_symbol])

        elif next_token in SPECIAL_TERM_SET:
            if next_token == ROUND_BRACKETS_LEFT:
                self.subroutine_call(ROUND_BRACKETS_LEFT)

            # putting the array value in the last place in the stack
            elif next_token == SQUARE_BRACKETS_LEFT:
                cur_token = self.jack_tokenizer.cur_token
                self.advance() # identifier ----> [
                self.advance()  # [ ----> expression
                self.compile_expression()
                self.vm_writer.write_push(self.symbol_table.kind_of(cur_token),
                                          self.symbol_table.index_of(
                                              cur_token))
                self.vm_writer.write_arithmetic("ADD")
                self.vm_writer.write_pop("pointer", 1)
                self.vm_writer.write_push("that", 0)

            elif next_token == DOT:
                self.subroutine_call(DOT)
            self.advance() # )\] -----> ; \ op_symbol

        else:
            if cur_token_type == INT_CONST:
                self.vm_writer.write_push("constant", int(cur_token))
            elif cur_token_type == STRING_CONST:
                self.write_string_constant(cur_token)
            elif cur_token_type == IDENTIFIER:
                self.vm_writer.write_push(self.symbol_table.kind_of(cur_token),
                                          self.symbol_table.index_of(cur_token))
            elif cur_token_type == KEYWORD:
                if cur_token == TRUE:
                    self.vm_writer.write_push("constant", 0)
                    self.vm_writer.write_arithmetic("not")
                if cur_token == FALSE or cur_token == NULL:
                    self.vm_writer.write_push("constant", 0)
                if cur_token == THIS:
                    self.vm_writer.write_push("pointer", 0)
            self.advance() #integer|string|keyword constant or identifier ----> symbol\;

    def write_string_constant(self, string):
        self.vm_writer.write_push("constant", len(string))
        self.vm_writer.write_call("String.new", 1)
        for letter in string:
            self.vm_writer.write_push("constant", ord(letter))
            self.vm_writer.write_call("String.appendChar", 2)

    def subroutine_call(self, symbol_type):
        func_name = self.jack_tokenizer.cur_token
        arg_num = 0
        if symbol_type == DOT:
            if self.symbol_table.check_existance(func_name):
                self.vm_writer.write_push(self.symbol_table.kind_of(func_name),
                                          self.symbol_table.index_of(func_name))
                arg_num += 1
                func_name = self.symbol_table.type_of(func_name)
            self.advance() #class\var name -----> .
            self.advance() #. -----> subroutine name
            func_name += "." + self.jack_tokenizer.cur_token

        else:
            func_name = self.class_name + DOT + func_name
            self.vm_writer.write_push("pointer", 0)
            arg_num = 1

        self.advance() #subroutine\var class name -----> (

        self.advance() #( -----> start of expression list
        arg_num += self.compile_expression_list()

        self.vm_writer.write_call(func_name, arg_num)

    def compile_expression_list(self) -> int:
        """Compiles a (possibly empty) comma-separated list of expressions."""
        arg_counter = 0
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() != SYMBOL or \
                self.jack_tokenizer.cur_token != ROUND_BRACKETS_RIGHT:

            arg_counter +=1
            self.compile_expression()
            if self.jack_tokenizer.token_type() == SYMBOL and \
                    self.jack_tokenizer.cur_token == COMMA:
                self.advance() #, -----> next expression\)

        return arg_counter

    def advance(self):
        self.jack_tokenizer.cur_token = self.jack_tokenizer.next_token
        self.jack_tokenizer.is_string_cur = self.jack_tokenizer.is_string_next
        if not self.jack_tokenizer.flag_last_token:
            self.jack_tokenizer.advance()
