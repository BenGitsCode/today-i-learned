# Today I learned...

...something new about how `cat` works.

These all produce exactly the same output. 🙀

## Examples of use


```sh

cat foo.txt bar.txt >new.txt
cat >new.txt foo.txt bar.txt
>new.txt cat foo.txt bar.txt
```

For example, to begin this TIL I entered into the terminal `cat til-template.md >bash-zsh/cat-madness.md` which shoveled the contents of the til-template into a new file called cat-madness. I also could have used `cat til-template > bash-zsh/cat-madness.md` **OR** `>bash-zsh/cat-madness.md cat til-template.md`


## Credit:

**Found in tweet made by [@isislovecruf](https://twitter.com/isislovecruft/) ![here](https://cl.ly/2P2q1r0K3n0e/download/Image%202017-07-31%20at%201.42.14%20PM.png)**
