# TIL about `git rev-list`

I only started paying attention to the number of commits on a repo semi-recently (specifically when I was watching game project presentations), so it was kind of funny when I was doing [these](https://github.com/taylorc93/git-exercises) exercises by [@taylorc93](https://github.com/taylorc93) and the first task was to count the total commits in the repo.

_I kind of added this to the README on my practice branch after the 3rd or 4th task, and then the next task was to reset one commit and force push it, so my repo's a little different than other forks probably are, haha_
 > Hah, my first instinct was to run `git log --oneline` but in retrospect that could have lasted forever. And now I've learned something new! `git rev-list HEAD --count` will tell you the number of commits for the `HEAD`!

But yea! So now I know about `git rev-list`! It basically lets you list all your commits, or a range of commits, in reverse-order, and obviously it also lets you count everything. `git rev-list --all --count`, for example, will let you count every commit _across all branches_. You can also look for merge-conflict commits, commits that were made within a certain timeframe, or even commits by author or headline patterns (using regex)!

_From the [docs](https://git-scm.com/docs/git-rev-list)_
>`rev-list` is a very essential Git command, since it provides the ability to build and traverse commit ancestry graphs. For this reason, it has a lot of different options that enables it to be used by commands as different as `git bisect` and `git repack`.

They have some more complex options that I definitely want to read through later, but for now this is super cool and nifty, especially for working in groups!
