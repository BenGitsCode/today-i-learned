# Difference Between the `&&` `||` and `;` List Operators

I've used these for far too long without clearly recognizing the difference between them.

Consider the following from the bash [man page](http://www.gnu.org/software/bash/manual/bashref.html#Lists):

>A list is a sequence of one or more pipelines separated by one of the operators ‘;’, ‘&’, ‘&&’, or ‘||’, and optionally terminated by one of ‘;’, ‘&’, or a newline.

`&&` and `||` are respectively equivalent to the logical `AND` and `OR` operators.

>Of these list operators, ‘&&’ and ‘||’ have equal precedence, followed by ‘;’ and ‘&’, which have equal precedence.

`;` and `||` are a little different and are often used to terminate a list of commands using the the above logical operators.



## Examples

Consider the following example from this [stackOverflow](#credit)

## Credit
**Uses Stack Exchange contributions made by [Simon Whitaker](https://unix.stackexchange.com/users/2180/shawn-j-goff)and [Jeff Schaller](https://unix.stackexchange.com/users/117549/jeff-schaller)**
