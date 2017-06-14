# Today I learned `&&` magic

Went out to dinner with some friends, and [@jason-liang-16](https://github.com/jason-liang-16) told me about the power of `&&` operators.

So I already knew that `&&` operators are only `true` if both sides are `true`/ it's automatically `false` if the first side is `false` ([see here](https://github.com/BenGitsCode/today-i-learned/blob/master/bash-zsh/list-operators.md)), but I've never assigned it to a variable before.

Basically, the first side of the `&&` statement gets read, and if both are true, the variable gets assigned to the _second_ side.

It sound like it kind of acts like a `.exists?` in Ruby:
```rb
if person.exists?
  personName = person.name
end
```

I'll think of a better example later, but for now:

```js
let personName = person && person.name // if the person doesn't exist,
// personName stays undefined, but if the person does exist and has a name,
// personName will be assigned to that person's name.
// this is sort of pseudocode and I'm sure there's a better example of it,
// but I am very tired right now.
```
