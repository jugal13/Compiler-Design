# CD

## Programs

1. [Question 1](Programs/Question&#32;1)
    <br>
    Write a C / C++ program to accept a C program and perform error detection& correction for the following:
    <br>
    a) Check for un-terminated string constant and single character constant in the input C program. i.e A string constant begins with double quotes and extends to more than one line.
    <br>
    b) Report the error line numbers and the corrective actions to user.

2. [Question 2](Programs/Question&#32;2)
    <br>
    Write a C / C++ program to accept a C program and perform error detection& correction , indicate the user for the following :
    <br>
    a) Check whether the multi-line comment statement is terminated correctly or not.
    <br>
    b) Check whether the single line comment statement is existing in your C program and report the line numbers to the user.

3. [Question 3](Programs/Question&#32;3)
    <br>
    Write a Lex program to accept a C program and perform error detection& correction for the following:
    <br>
    a) Check for valid arithmetic and relational expressions in the input C program
    <br>
    b) Recognize increment and decrement operations also.
    <br>
    c) Report the errors in the statements’ to user.

4. [Question 4](Programs/Question&#32;4)
    <br>
    Write a Lex program to accept a C program and perform the following error detection & correction:
    <br>
    a) Check the validity of “​structure” d​ eclarative statements in your program.
    <br>
    b) Indicate the invalid statements along with their line numbers to users.

5. [Question 5](Programs/Question&#32;5)
    <br>
    Write a Lex program to accept a C program and perform the following error detection & correction:
    <br>
    a) Check for the valid “​if ....else if...else”​ statement in the input C program.
    <br>
    b) Report the errors to users.

6. [Question 6](Programs/Question&#32;6)
    <br>
    Write Yacc and Lex programs to accept an arithmetic expression and perform the following error detection:
    <br>
    a) Check the validity of the “​arithmetic expressions”​ in the input C statement.
    <br>
    b) Report the errors in the statements to user.
    <br>
    c) Evaluate the arithmetic expression.
    <br>
    d) Recognize increment and decrement operators involved in the expressions.

7. [Question 7](Programs/Question&#32;7)
    <br>
    Write Yacc and Lex programs to accept a declarative statement and perform the following error detection:
    <br>
    a) Check the validity of the “​declarative”​ statement.
    <br>
    b) Recognize array declarations of any dimension.
    <br>
    c) Report the errors to users.

8. [Question 8](Programs/Question&#32;8)
    <br>
    Write Yacc and Lex programs to accept a relational expression and perform the following error detection:
    <br>
    a) Check the validity of the “​relational”​ expression and evaluate the expression.
    <br>
    Note: Relational expression can have arithmetic expressions embedded in it.

9. [Question 9](Programs/Question&#32;9)
    <br>
    Write Yacc and Lex programs to accept a logical expression and perform the following error detection:
    <br>
    a) Check for the validity of the logical expression and evaluate it.
    <br>
    Note: Logical expression can have relational and arithmetic expressions with in it.

10. [Question 10](Programs/Question&#32;10)
    <br>
    Write Yacc and Lex programs for the following grammar:
    <br>
    a) Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    <br>
    S -> SS+ | SS* | (S) | a

11. [Question 11](Programs/Question&#32;11)
    <br>
    Write Yacc and Lex programs for the following grammar:
    <br>
    a) Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    <br>
    S -> L=R | R
    <br>
    L -> *R | id | num
    <br>
    R -> L

12. [Question 12](Programs/Question&#32;12)
    <br>
    Write Yacc and Lex programs for the following grammar:
    <br>
    a)Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    <br>
    D -> TL
    <br>
    T-> int | float | long int | double | static int | register int 
    <br>
    L -> L,id | id

## Misc 
1. [Variable Symbol Table](Misc/1.&#32;Arr&#32;Symbol&#32;Table.cpp)
2. [Array Symbol Table](Misc/2.&#32;Var&#32;Symbol&#32;Tables.cpp)
3. [Shorthand operator using lex](Misc/3.&#32;shorthand_operator.l)
4. [Scientific number validation using lex](Misc/4.&#32;scientific_number.l)
5. [Data Type validation using lex](Misc/5.&#32;data_type.l)
6. [Expression validation using lex](Misc/6.&#32;expression_val.l)
7. [If statement validation using lex](Misc/7.&#32;if_val.l)
8. [Multiline comment validation using lex](Misc/8.&#32;multiline_comment.l)
9. [Number validation using lex](Misc/9.&#32;number_val.l)
10. [String validation using lex](Misc/10.&#32;string_val.l)