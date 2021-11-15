"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
import re

ROUND_BRACKETS_LEFT = '('
ROUND_BRACKETS_RIGHT = ')'
SQUARE_BRACKETS_LEFT = '['
SQUARE_BRACKETS_RIGHT = ']'
CURLY_BRACKETS_LEFT = '{'
CURLY_BRACKETS_RIGHT = '}'
ANGEL_BRACKETS_LEFT = '<'
ANGEL_BRACKETS_RIGHT = '>'
DOT = '.'
COMMA = ','
SEMICOLON = ';'
PLUS = '+'
MINUS = '-'
ASTERISK = '*'
BACKLASH = '/'
AMPERSAND = '&'
PIPE = '|'
EQUAL = '='
APPROXIMATELY = '~'
SPACE = ' '

CLASS = "class"
CONSTRUCTOR = "constructor"
FUNCTION = "function"
METHOD = "method"
FIELD = "field"
STATIC = "static"
VAR = "var"
VAR_UP = "VAR"
INT = "int"
CHAR = "char"
BOOLEAN = "boolean"
VOID = "void"
TRUE = "true"
FALSE = "false"
NULL = "null"
THIS = "this"
LET = "let"
LET_UP = "LET"
DO = "do"
DO_UP = "DO"
IF = "if"
IF_UP = "IF"
ELSE = "else"
WHILE = "while"
WHILE_UP = "WHILE"
RETURN = "return"
RETURN_UP = "RETURN"
OP_SYMBOLS_XML_DIC = {"<": "&lt;", ">": "&gt;", '"': "quot;", "&": "&amp;"}

KEYWORD = "KEYWORD"
SYMBOL = "SYMBOL"
STRING_CONST = "STRING_CONST"
INT_CONST = "INT_CONST"
IDENTIFIER = "IDENTIFIER"

SYMBOL_SET = {ROUND_BRACKETS_LEFT, ROUND_BRACKETS_RIGHT, SQUARE_BRACKETS_LEFT,
              SQUARE_BRACKETS_RIGHT, CURLY_BRACKETS_LEFT, CURLY_BRACKETS_RIGHT,
              ANGEL_BRACKETS_LEFT, ANGEL_BRACKETS_RIGHT, DOT, COMMA, SEMICOLON,
              PLUS, MINUS, ASTERISK, SEMICOLON, AMPERSAND, PIPE, EQUAL,
              APPROXIMATELY, SPACE, BACKLASH}
KEYWORD_SET = {CLASS, CONSTRUCTOR, FUNCTION, METHOD, FIELD, STATIC, VAR, INT,
               CHAR, BOOLEAN, VOID, TRUE, FALSE, NULL, THIS, LET, DO, IF,
               ELSE, WHILE, RETURN, TRUE, FALSE, NULL, THIS}


class JackTokenizer:
    """Removes all comments from the input stream and breaks it
    into Jack language tokens, as specified by the Jack grammar.
    """

    def __init__(self, input_stream: typing.TextIO) -> None:
        """Opens the input stream and gets ready to tokenize it.

        Args:
            input_stream (typing.TextIO): input stream.
        """
        self.clean_lines = []
        input_lines = input_stream.read().rstrip('\n').splitlines()

        flag_mid_line_comment = False
        start, end = 0, 0

        # creat list of ready to tokenize lines
        for line in input_lines:

            # empty line we can ignore
            if not line or line == '':
                continue

            # still comment line
            if flag_mid_line_comment:
                # comment continue to next line
                if '*/' not in line:
                    continue
                # end of comment
                else:
                    start, end = self.range_to_delete(line, 'end')
                    line = self.delete_range_from_line(start, end, line)
                    flag_mid_line_comment = False

            line = self.remove_comments(line)

            # strip line from all kind of spaces
            line = line.replace('\t', SPACE)
            line = line.strip()
            line = line.lstrip('').rstrip('')

            # handle comments while there not string in line
            if line and line.split('"')[0] == line:
                    # comment start in this line
                        if '/*' in line:
                            start, end = self.range_to_delete(line, 'both')
                        # comment dose not end at the same line
                            if end == '?':
                                flag_mid_line_comment = True
                            line = self.delete_range_from_line(start, end, line)

            if line and line != '':
                self.clean_lines.append(line)

        self.next_token = None

        self.counter_line = 0
        self.counter_char_in_line = 0
        self.is_string_next = False
        self.is_string_cur = False

        self.flag_last_token = False

        self.advance()
        self.cur_token = self.next_token
        self.advance()

    def remove_comments(self,string):
        pattern = r"(\".*?\"|\'.*?\')|(/\*.*?\*/|//[^\r\n]*$)"
        # first group captures quoted strings (double or single)
        # second group captures comments (//single-line or /* multi-line */)
        regex = re.compile(pattern, re.MULTILINE | re.DOTALL)

        def _replacer(match):
            # if the 2nd group (capturing comments) is not None,
            # it means we have captured a non-quoted (real) comment string.
            if match.group(2) is not None:
                return ""  # so we will return empty to remove the comment
            else:  # otherwise, we will return the 1st group
                return match.group(1)  # captured quoted-string

        return regex.sub(_replacer, string)

    def range_to_delete(self, line, type):
        char = 0
        start = 0
        end = 0
        if type == 'both':
            # find start
            while char < len(line) - 1 and line[char: char + 2] != '/*':
                char += 1
            start = char
            # find end
            while char < len(line) - 1 and line[char:char + 2] != '*/':
                char += 1
            if char == len(line) - 1:
                end = '?'
            else:
                end = char + 2
        elif type == 'end':
            while char < len(line) - 2 and line[char:char + 2] != '*/' \
                    != '/':
                char += 1
            end = char + 2

        return start, end

    def delete_range_from_line(self, start, end, line):
        if end == '?':
            end = len(line)
        start_part = line[:start]
        end_part = line[end:len(line) + 1]
        return str(start_part) + str(end_part)

    def has_more_tokens(self) -> bool:
        """Do we have more tokens in the input?

        Returns:
            bool: True if there are more tokens, False otherwise.
        """
        # TODO: SEE IF WI NEED TO TO -1 IN THE LEN
        if self.flag_last_token:
            return False
        if self.counter_line == len(
                self.clean_lines) and self.next_token == CURLY_BRACKETS_RIGHT:
            self.flag_last_token = True
        return True

    def advance(self) -> None:
        """Gets the next token from the input and makes it the current token. 
        This method should be called if has_more_tokens() is true. 
        Initially there is no current token.
        """
        self.next_token = ''
        cur_line = self.clean_lines[self.counter_line]
        self.is_string_next = False

        # string handling
        if cur_line[self.counter_char_in_line] == '"':
            self.is_string_next = True
            self.counter_char_in_line += 1
            while self.counter_char_in_line != len(cur_line) and \
                    cur_line[self.counter_char_in_line] != '"':
                self.next_token += cur_line[self.counter_char_in_line]
                self.counter_char_in_line += 1
            self.counter_char_in_line += 1

        # check if the next char is a symbol
        elif cur_line[self.counter_char_in_line] in SYMBOL_SET:
            self.next_token = cur_line[self.counter_char_in_line]
            self.counter_char_in_line += 1

        else:
            while self.counter_char_in_line != len(cur_line) and \
                    cur_line[self.counter_char_in_line] not in SYMBOL_SET:
                self.next_token += cur_line[self.counter_char_in_line]
                self.counter_char_in_line += 1

        #     check if we got to the end of a line
        if self.counter_char_in_line == len(cur_line):
            self.counter_line += 1
            self.counter_char_in_line = 0

        while not self.is_string_next and self.next_token == SPACE:
            self.advance()

    def token_type(self) -> str:
        """
        Returns:
            str: the symbol_type of the current token, can be
            "KEYWORD", "SYMBOL", "IDENTIFIER", "INT_CONST", "STRING_CONST"
        """
        token_type = ""
        if self.cur_token in KEYWORD_SET:
            token_type = KEYWORD
        elif self.is_string_cur:
            token_type = STRING_CONST
        elif self.cur_token in SYMBOL_SET:
            token_type = SYMBOL
        elif self.cur_token.isdigit():
            token_type = INT_CONST
        else:
            token_type = IDENTIFIER
        return token_type

    def keyword(self) -> str:
        """
        Returns:
            str: the keyword which is the current token.
            Should be called only when token_type() is "KEYWORD".
            Can return "CLASS", "METHOD", "FUNCTION", "CONSTRUCTOR", "INT", 
            "BOOLEAN", "CHAR", "VOID", "VAR", "STATIC", "FIELD", "LET", "DO", 
            "IF", "ELSE", "WHILE", "RETURN", "TRUE", "FALSE", "NULL", "THIS"
        """

        return self.cur_token.upper()

    def symbol(self) -> str:
        """
        Returns:
            str: the character which is the current token.
            Should be called only when token_type() is "SYMBOL".
        """
        if self.cur_token in OP_SYMBOLS_XML_DIC:
            return OP_SYMBOLS_XML_DIC[self.cur_token]
        return self.cur_token

    def identifier(self) -> str:
        """
        Returns:
            str: the identifier which is the current token.
            Should be called only when token_type() is "IDENTIFIER".
        """
        return self.cur_token

    def int_val(self) -> int:
        """
        Returns:
            str: the integer value of the current token.
            Should be called only when token_type() is "INT_CONST".
        """
        return int(self.cur_token)

    def string_val(self) -> str:
        """
        Returns:
            str: the string value of the current token, without the double 
            quotes. Should be called only when token_type() is "STRING_CONST".
        """
        return self.cur_token
