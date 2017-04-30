# Difference Between the `&&` `||` and `;` List Operators

I've used these for far too long without clearly recognizing the difference between them.

Consider the following from the bash [man page](http://www.gnu.org/software/bash/manual/bashref.html#Lists):

>A list is a sequence of one or more pipelines separated by one of the operators ‘;’, ‘&’, ‘&&’, or ‘||’, and optionally terminated by one of ‘;’, ‘&’, or a newline.

`&&` and `||` are respectively equivalent to the logical `AND` and `OR` operators.

>Of these list operators, ‘&&’ and ‘||’ have equal precedence, followed by ‘;’ and ‘&’, which have equal precedence.

`;` and `||` are a little different and are often used to terminate a list of commands using the the above logical operators.

## Examples

### The `&&` List Operator
```sh
$ false && echo howdy!
```
>The `echo howdy!` will never run becuase the left-side commands exit status of 0 will return false. Command2 (right) on the right side of `&&` will only execute if, and only if, command1(left) returns an exit status of zero. (false exits with zero status)
```sh
$ true && echo howdy!
howdy!
```
>In this example, the `echo` executes because the command1(left) has an exit status that returns non-zero (true) exits with non-zero status)

### The `||` List Operator
```sh
$ true || echo howdy!
```
>The `||` operator works in an inverse fashion. Command2 (right) on the right side of `||` will only execute if, and only if, command1(left) returns an exit status of non-zero. (true exits with non-zero status)
```
$ false || echo howdy!
howdy!
```
> The `||` operator works in an inverse fashion. In this example, the `echo` executes because the command1(left) has an exit status that returns non-zero (true) exits with non-zero status)

Consider the following example from this [stackOverflow](#credit)

## Credit
**Uses Stack Exchange contributions made by [Shawn J. Goff](https://unix.stackexchange.com/users/2180/shawn-j-goff) and [Jeff Schaller](https://unix.stackexchange.com/users/117549/jeff-schaller)**
