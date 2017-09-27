# Visitor Design Pattern

The main idea behind a visitor design pattern is to implement placeholder methods ahead of time and we do not know ahead of time when these functions will be called.  But just in case they are called, we'd have something to call it against.

## Exercise

Let's update the `Calc.g4` by decoupling individual operators as followed:

```
expr:   expr MUL expr        # mul
    |   expr DIV expr        # div
    |   expr ADD expr        # add
    |   expr SUB expr        # sub
```

Now run the `antlr4` program:

```bash
antlr4 -no-listener -visitor Calc.g4
```

This will produce bunch of files.  We are interested in the file `CalcBaseVisitor.java` -- take a look at the placeholder methods that it has generated.

Now modify the `Calc.g4` file as followed:

```
expr:   expr MUL expr        # multiplication
    |   expr DIV expr        # division
    |   expr ADD expr        # addition
    |   expr SUB expr        # subtraction
```

Run the same command again.  Note the difference with the newly generated `CalcBaseVisitor.java`.  Note that we should never have to modify `CalcBaseVisitor.java`, instead we should write our own visitor implementation.  So let's write a class `EvalVisitor`:

```java
public class EvalVisitor extends CalcBaseVisitor<Integer> {

}
```

For each of the functions in `CalcBaseVisitor.java`, we'll need to implement it.


## References:

- Derek Banas. [Visitor Design Pattern](https://www.youtube.com/watch?v=pL4mOUDi54o)

- Wikipedia. [Visitor Pattern](https://en.wikipedia.org/wiki/Visitor_pattern)

- Source Making. [Visitor Design Pattern](https://sourcemaking.com/design_patterns/visitor)
