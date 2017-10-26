# CS4188 Midterm

You have from 8:00 PM to 11:59 PM to complete this exam.  You are allowed to consult class notes, slides and reading assignments (which include videos) while taking this exam.  You are not permitted to discuss this exam with another student.

When you've completed the exam, please upload `midterm.txt` and `midterm.g4` to CSNS.  If you work on the bonus part, upload _only_ `.java` files.

## Part 1

Create a file called `midterm.txt` and answer the following questions:

1. Up to now, we've performed the first of the two parts of compilation.  This part is called _analysis_.  Which of the following is part of the analysis part?

    (a) lexer
    (b) parser
    (c) semantic check
    (d) syntactic check
    (e) all of the above

Please state why.

2. Which of the following is not associated with a context-free grammar:

    (a) terminal symbols
    (b) nonterminal symbols
    (c) start symbol
    (d) end symbol

3. Please describe how homework 1 is (or is not) a recursive descent parser.

4. A lexical analyzer does not do which of the following:

    (a) remove tabs
    (b) represent constants as a token
    (c) recognize keywords
    (d) recognize constants and store them in a global symbol table

5. Please write an antlr rule that defines an identifier or variable of the following rule: must always begin with an underscore.

6. According to Andy Keep, what is a nanonpass compiler model?

7. In your own words, please list three advantages of a nanopass compiler.

8. How did Angus Fletcher achieve time traveller with his assembler?

9. What are immutables? and why are they important?

## Part 2

Create a file called `midterm.g4` and implement a fictitious language.  This language is a `stack,` and it has no concepts of numbers, i.e., everything is a variable.  It has three functions:

- `push`
- `pop`
- `clear`

Here is an example valid language code:

```
push michael
push 10
push john
pop
pop
clear
push james
```

You are not required to implement that `.java` part of the code.

## Bonus

For those who are interested in a bonus assignment, implement the `.java` part of the code.  In other words, write a full java program reads in the source code for the `stack` language.  The program should:

- Push data onto a private stack when `push`
- Print the stack when `pop`
- Clear the stack when `clear`
- Produce an error message when trying to `pop` an empty stack

