"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""

import typing
from JackTokenizer import *
from JackTokenizer import JackTokenizer

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
CLASS_XML_END = " </class>"

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
UNARY_OP_SET = {MINUS, APPROXIMATELY}
OP_SYMBOLS_SET = {"&", "|", "<", ">", "=", "-", "+", "*", "/", "&lt;",
                  "&gt;", "&amp;"}
VAR_DEC_BEGINNING_SET = {"STATIC", "FIELD"}
SUB_ROUTINE_DEC_SET = {"FUNCTION", "CONSTRUCTOR", "METHOD"}
SPECIAL_TERM_SET = {ROUND_BRACKETS_LEFT, SQUARE_BRACKETS_LEFT, DOT}


class CompilationEngine:
    """Gets input from a JackTokenizer and emits its parsed structure into an
    output stream.
    """

    def __init__(self, input_stream: typing.TextIO,
                 output_stream: typing.TextIO) -> None:
        """
        Creates a new compilation engine with the given input and output. The
        next routine called must be compileClass()
        :param input_stream: The input stream.
        :param output_stream: The output stream.
        """

        self.token_func_dic = {KEYWORD: self.write_keyword,
                               SYMBOL: self.write_symbol,
                               STRING_CONST: self.write_string,
                               INT_CONST: self.write_int,
                               IDENTIFIER: self.write_identifier}
        self.input = input_stream
        self.output = output_stream

        self.jack_tokenizer = JackTokenizer(input_stream)
        self.tab = 0

    def compile_class(self) -> None:
        """Compiles a complete class."""
        # TODO : make sure that the function can call recursive to
        #  another class
        self.class_begin()
        # class fields handling
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in VAR_DEC_BEGINNING_SET:
            self.compile_class_var_dec()
            self.advance()

        # class methods\functions\constructors
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in SUB_ROUTINE_DEC_SET:
            self.compile_subroutine()

        self.token_func_dic[self.jack_tokenizer.token_type()]()
        self.dec_tab()
        self.output.write(TAB * self.tab + CLASS_XML_END + NEWLINE)

    def advance(self):
        self.jack_tokenizer.cur_token = self.jack_tokenizer.next_token
        self.jack_tokenizer.is_string_cur = self.jack_tokenizer.is_string_next
        if not self.jack_tokenizer.flag_last_token:
            self.jack_tokenizer.advance()

    def class_begin(self):
        self.output.write(TAB * self.tab + CLASS_XML_START + NEWLINE)
        self.add_tab()
        self.write_keyword()
        self.advance()
        self.write_identifier()
        self.advance()
        self.write_symbol()
        self.advance()

    def add_tab(self):
        self.tab += 1

    def dec_tab(self):
        self.tab -= 1

    def write_keyword(self):
        self.output.write(TAB * self.tab + KEYWORD_XML_START +
                          self.jack_tokenizer.cur_token +
                          KEYWORD_XML_END + NEWLINE)

    def write_symbol(self):
        self.output.write(TAB * self.tab + SYMBOL_XML_START +
                          self.jack_tokenizer.symbol() +
                          SYMBOL_XML_END + NEWLINE)

    def write_identifier(self):
        self.output.write(TAB * self.tab + IDENTIFIER_XML_START +
                          self.jack_tokenizer.identifier() +
                          IDENTIFIER_XML_END + NEWLINE)

    def write_string(self):
        self.output.write(TAB * self.tab + STRING_CONST_XML_START +
                          self.jack_tokenizer.string_val() +
                          STRING_CONST_XML_END + NEWLINE)

    def write_int(self):
        self.output.write(TAB * self.tab + INT_CONST_XML_START +
                          str(self.jack_tokenizer.int_val()) +
                          INT_CONST_XML_END + NEWLINE)

    def compile_class_var_dec(self) -> None:
        """Compiles a static declaration or a field declaration."""

        self.output.write(TAB * self.tab + CLASS_VAR_DEC_XML_START
                          + NEWLINE)
        self.add_tab()
        while self.jack_tokenizer.cur_token != SEMICOLON:
            self.token_func_dic[self.jack_tokenizer.token_type()]()
            self.advance()
        self.write_symbol()
        self.dec_tab()
        self.output.write(TAB * self.tab + CLASS_VAR_DEC_XML_END
                          + NEWLINE)

    def compile_subroutine(self) -> None:
        """Compiles a complete method, function, or constructor."""
        self.output.write(TAB * self.tab + SUBROUTINE_DEC_XML_START
                          + NEWLINE)
        self.add_tab()
        while self.jack_tokenizer.cur_token != ROUND_BRACKETS_LEFT:
            self.token_func_dic[self.jack_tokenizer.token_type()]()
            self.advance()
        # handling the parameter list of the function
        self.compile_parameter_list()

        # handling the subroutine body
        self.output.write(TAB * self.tab + SUBROUTINE_BODY_XML_START
                          + NEWLINE)
        self.add_tab()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # {
        self.advance()

        # handle var declaration
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() == VAR_UP:
            self.compile_var_dec()
            self.advance()

        # handling the statements
        self.compile_statements()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # }
        self.dec_tab()
        self.output.write(TAB * self.tab + SUBROUTINE_BODY_XM_END
                          + NEWLINE)
        self.dec_tab()
        self.output.write(TAB * self.tab + SUBROUTINE_DEC_XML_END
                          + NEWLINE)
        self.advance()

    def compile_parameter_list(self) -> None:
        """Compiles a (possibly empty) parameter list, not including the 
        enclosing "()".
        """
        self.token_func_dic[self.jack_tokenizer.token_type()]()
        self.advance()
        self.output.write(TAB * self.tab + PARAMETERS_LIST_XML_START
                          + NEWLINE)
        self.add_tab()
        while self.jack_tokenizer.cur_token != ROUND_BRACKETS_RIGHT:
            self.token_func_dic[self.jack_tokenizer.token_type()]()
            self.advance()

        self.dec_tab()
        self.output.write(TAB * self.tab + PARAMETERS_LIST_XML_END
                          + NEWLINE)

        self.token_func_dic[self.jack_tokenizer.token_type()]()
        self.advance()

    def compile_var_dec(self) -> None:
        """Compiles a var declaration."""
        self.output.write(TAB * self.tab + VAR_DEC_XML_START
                          + NEWLINE)
        self.add_tab()
        while self.jack_tokenizer.cur_token != SEMICOLON:
            self.token_func_dic[self.jack_tokenizer.token_type()]()
            self.advance()
        self.write_symbol()
        self.dec_tab()
        self.output.write(TAB * self.tab + VAR_DEC_XML_END
                          + NEWLINE)

    def compile_statements(self) -> None:
        """Compiles a sequence of statements, not including the enclosing 
        "{}".
        """
        self.output.write(TAB * self.tab + STATEMENT_XML_START
                          + NEWLINE)
        self.add_tab()

        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == KEYWORD and \
                self.jack_tokenizer.keyword() in STATEMENTS_UP:

            cur_statement = self.jack_tokenizer.keyword()
            if cur_statement == DO_UP:
                self.compile_do()
            elif cur_statement == IF_UP:
                self.compile_if()
            elif cur_statement == LET_UP:
                self.compile_let()
            elif cur_statement == WHILE_UP:
                self.compile_while()
            elif cur_statement == RETURN_UP:
                self.compile_return()

        self.dec_tab()
        self.output.write(TAB * self.tab + STATEMENT_XML_END
                          + NEWLINE)

    def compile_do(self) -> None:
        """Compiles a do statement."""
        self.output.write(TAB * self.tab + DO_BEG_XML_START
                          + NEWLINE)
        self.add_tab()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # do
        self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # identifier
        self.advance()
        self.subroutine_call(self.jack_tokenizer.cur_token)
        self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # ;
        self.advance()
        self.dec_tab()
        self.output.write(TAB * self.tab + DO_XML_END
                          + NEWLINE)

    def compile_let(self) -> None:
        """Compiles a let statement."""
        self.output.write(TAB * self.tab + LET_XML_START
                          + NEWLINE)
        self.add_tab()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # keyword let
        self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # identifier
        self.advance()
        # HANDLE  "["
        if self.jack_tokenizer.token_type() == SYMBOL and \
                self.jack_tokenizer.symbol() == SQUARE_BRACKETS_LEFT:
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # [
            self.advance()
            self.compile_expression()
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # ]
            self.advance()

        self.token_func_dic[self.jack_tokenizer.token_type()]()  # =
        self.advance()
        self.compile_expression()

        self.token_func_dic[self.jack_tokenizer.token_type()]()  # ;
        self.dec_tab()
        self.output.write(TAB * self.tab + LET_XML_END
                          + NEWLINE)
        self.advance()

    def compile_while(self) -> None:
        """Compiles a while statement."""
        self.output.write(TAB * self.tab + WHILE_XML_START
                          + NEWLINE)
        self.if_beginning_while()
        self.advance()
        self.dec_tab()
        self.output.write(TAB * self.tab + WHILE_XML_END + NEWLINE)

    def if_beginning_while(self):
        self.add_tab()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # While/ if
        self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # (
        self.advance()
        self.compile_expression()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # )
        self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # {
        self.advance()
        self.compile_statements()
        # self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # }

    def compile_return(self) -> None:
        """Compiles a return statement."""

        self.output.write(TAB * self.tab + RETURN_XML_START + NEWLINE)
        self.add_tab()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # return
        if self.jack_tokenizer.next_token != SEMICOLON:
            self.advance()
            self.compile_expression()
        else:
            self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # ;
        self.dec_tab()
        self.output.write(TAB * self.tab + RETURN_XML_END + NEWLINE)
        self.advance()

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""
        self.output.write(TAB * self.tab + IF_XML_START
                          + NEWLINE)
        self.if_beginning_while()
        if self.jack_tokenizer.next_token == ELSE:
            self.advance()
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # else
            self.advance()
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # {
            self.advance()
            self.compile_statements()
            # self.advance()
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # }

        self.dec_tab()
        self.output.write(TAB * self.tab + IF_XML_END + NEWLINE)
        self.advance()

    def compile_expression(self) -> None:
        """Compiles an expression."""
        self.output.write(TAB * self.tab + EXPRESSION_XML_START
                          + NEWLINE)
        self.add_tab()
        self.compile_term()
        # self.advance()

        # Handle term
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() == SYMBOL and \
                self.jack_tokenizer.symbol() in OP_SYMBOLS_SET:
            self.token_func_dic[
                self.jack_tokenizer.token_type()]()  # current symbol
            # if self.jack_tokenizer.cur_token == '|':
            #     print("hey")
            self.advance()
            self.compile_term()
            # self.advance()

        self.dec_tab()
        self.output.write(TAB * self.tab + EXPRESSION_XML_END
                          + NEWLINE)

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

        self.output.write(TAB * self.tab + TERM_XML_START
                          + NEWLINE)
        self.add_tab()

        next_token = self.jack_tokenizer.next_token
        cur_token_type = self.jack_tokenizer.token_type()

        if cur_token_type == SYMBOL and \
                self.jack_tokenizer.symbol() == ROUND_BRACKETS_LEFT:

            self.token_func_dic[self.jack_tokenizer.token_type()]()  # (
            self.advance()
            self.compile_expression()

            self.token_func_dic[self.jack_tokenizer.token_type()]()  # )
            self.advance()



        elif cur_token_type == SYMBOL and \
                self.jack_tokenizer.symbol() in UNARY_OP_SET:
            self.token_func_dic[
                self.jack_tokenizer.token_type()]()  # write symbol
            self.advance()
            self.compile_term()

        elif next_token in SPECIAL_TERM_SET:
            if next_token == ROUND_BRACKETS_LEFT:
                self.subroutine_call(ROUND_BRACKETS_LEFT)
            elif next_token == SQUARE_BRACKETS_LEFT:
                self.token_func_dic[
                    self.jack_tokenizer.token_type()]()  # varName
                self.advance()
                self.token_func_dic[self.jack_tokenizer.token_type()]()  # [
                self.advance()
                self.compile_expression()
                self.token_func_dic[self.jack_tokenizer.token_type()]()  # ]


            elif next_token == DOT:
                self.token_func_dic[
                    self.jack_tokenizer.token_type()]()  # class name |var name
                self.advance()
                self.subroutine_call(DOT)

            self.advance()

        else:
            # integerConstant | stringConstant | keywordConstant | varName
            self.token_func_dic[self.jack_tokenizer.token_type()]()
            self.advance()

        self.dec_tab()
        self.output.write(TAB * self.tab + TERM_XML_END
                          + NEWLINE)

    def subroutine_call(self, symbol_type):
        if symbol_type == DOT:
            self.token_func_dic[self.jack_tokenizer.token_type()]()  # .
            self.advance()
            self.token_func_dic[
                self.jack_tokenizer.token_type()]()  # subroutine name
            self.advance()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # (
        self.advance()
        self.compile_expression_list()
        self.token_func_dic[self.jack_tokenizer.token_type()]()  # )

    def compile_expression_list(self) -> None:
        """Compiles a (possibly empty) comma-separated list of expressions."""
        self.output.write(TAB * self.tab + EXPRESSION_LIST_XML_START
                          + NEWLINE)
        self.add_tab()
        while self.jack_tokenizer.has_more_tokens() and \
                self.jack_tokenizer.token_type() != SYMBOL or \
                self.jack_tokenizer.cur_token != ROUND_BRACKETS_RIGHT:

            self.compile_expression()
            if self.jack_tokenizer.token_type() == SYMBOL and \
                    self.jack_tokenizer.cur_token == COMMA:
                self.token_func_dic[self.jack_tokenizer.token_type()]()  # ","
                self.advance()

        self.dec_tab()
        self.output.write(TAB * self.tab + EXPRESSION_LIST_XML_END
                          + NEWLINE)
