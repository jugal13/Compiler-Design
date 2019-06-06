# CD

## Programs

### Question 1
    Write a C / C++ program to accept a C program and perform error detection& correction for the following:
    a) Check for un-terminated string constant and single character constant in the input C program. i.e A string constant begins with double quotes and extends to more than one line.
    b) Report the error line numbers and the corrective actions to user.

### Question 2
    Write a C / C++ program to accept a C program and perform error detection& correction , indicate the user for the following :
    a) Check whether the multi-line comment statement is terminated correctly or not.
    b) Check whether the single line comment statement is existing in your C program and report the line numbers to the user.

### Question 3
    Write a Lex program to accept a C program and perform error detection& correction for the following:
    a) Check for valid arithmetic and relational expressions in the input C program
    b) Recognize increment and decrement operations also.
    c) Report the errors in the statements’ to user.

### Question 4
    Write a Lex program to accept a C program and perform the following error detection & correction:
    a) Check the validity of “​structure” d​ eclarative statements in your program.
    b) Indicate the invalid statements along with their line numbers to users.

### Question 5
    Write a Lex program to accept a C program and perform the following error detection & correction:
    a) Check for the valid “​if ....else if...else”​ statement in the input C program.
    b) Report the errors to users.

### Question 6
    Write Yacc and Lex programs to accept an arithmetic expression and perform the following error detection:
    a) Check the validity of the “​arithmetic expressions”​ in the input C statement.
    b) Report the errors in the statements to user.
    c) Evaluate the arithmetic expression.
    d) Recognize increment and decrement operators involved in the expressions.

### Question 7
    Write Yacc and Lex programs to accept a declarative statement and perform the following error detection:
    a) Check the validity of the “​declarative”​ statement.
    b) Recognize array declarations of any dimension.
    c) Report the errors to users.

### Question 8
    Write Yacc and Lex programs to accept a relational expression and perform the following error detection:
    a) Check the validity of the “​relational”​ expression and evaluate the expression.
    Note: Relational expression can have arithmetic expressions embedded in it.

### Question 9
    Write Yacc and Lex programs to accept a logical expression and perform the following error detection:
    a) Check for the validity of the logical expression and evaluate it.
    Note: Logical expression can have relational and arithmetic expressions with in it.

### Question 10
    Write Yacc and Lex programs for the following grammar:
    a) Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    S -> SS+ | SS* | (S) | a

### Question 11
    Write Yacc and Lex programs for the following grammar:
    a) Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    S -> L=R | R
    L -> *R | id | num
    R -> L

### Question 12
    Write Yacc and Lex programs for the following grammar:
    a)Test the executable code of Yacc program by giving valid and invalid strings as input. Grammar :
    D -> TL
    T-> int | float | long int | double | static int | register int 
    L -> L,id | id

## Misc 

    1. Variable Symbol Table
    2. Array Symbol Table
    3. Shorthand operator using lex
    4. Scientific number validation using lex
    5. Data Type validation using lex
    6. Expression validation using lex
    7. If statement validation using lex
    8. Multiline comment validation using lex
    9. Number validation using lex
    10. String validation using lex