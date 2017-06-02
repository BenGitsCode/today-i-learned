# Today I discovered hub

I was talking to [@bengitscode](https://github.com/bengitscode) about an issue and all of a sudden it was just _there_ and then he told me about [hub](https://hub.github.com/). It's just a command-line tool for GitHub, and it basically gives a lot of sugar for git commands, plus these:

```
pull-request   Open a pull request on GitHub
fork           Make a fork of a remote repository on GitHub and add as remote
create         Create this repository on GitHub and add GitHub as origin
browse         Open a GitHub page in the default browser
compare        Open a compare page on GitHub
release        List or create releases (beta)
issue          List or create issues (beta)
ci-status      Show the CI status of a commit
```
(They recommend you alias git=hub to make things easier since it won't change your normal git commands anyway)
So for example if I wanted to clone a repo, I just have to type
`git clone USERNAME/REPO_NAME`, or even just `git clone REPO_NAME` if you're cloning something from your own account.

For the issue queue, if I'm in my own repo on the command line I just need to use `git issue` and it shows me the issues and links:
```
~/wdi/post_ga/today-i-learned (laurpaik)
$ hub issue
     12] Commit to a branch naming convention. ( https://github.com/BenGitsCode/today-i-learned/issues/12 )
      8] Refine til-template.md ( https://github.com/BenGitsCode/today-i-learned/issues/8 )
      2] Create PULL_REQUEST_TEMPLATE.md  ( https://github.com/BenGitsCode/today-i-learned/issues/2 )
```
Super nifty!
