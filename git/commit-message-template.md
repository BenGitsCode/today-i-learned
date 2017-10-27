# Today I Learned...How to setup a commit message template

This is another that I've actually been using for a while, but feels worth adding here.

If you've used Git even a little, you probably recognize this message:

```sh
# Please enter the commit message for your changes.
# (Comment lines starting with '#' will not be included)
# Explicit paths specified without -i nor -o; assuming --only paths...
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       modified:   banana.txt
#
```

What many people don't realize, is that you can actually customize that message. Doing so allows you to not only have a nice guide for your
commits, but you can have several different templates per project or workplace to best follow specific conventions or commit formats.

## Setup

1. All you need to do is put your template of choice (remember: anything preceded by a `#` will be commented out) in a file `~/.gitmessage`.
1. Ensure you have this line `template =~./gitmessage` under the `[commit]` header in your git config file.
1. You can also do this in a one-line command in the terminal `git config --global commit.template ~/.gitmessage.txt` That's the default, but you name
the file whatever you'd like and/or set up several different templates.

### My Template

You can find the template I use most (at last as of the date I pushed this update) [here](https://cl.ly/nLu6)

- This is a mixture of things I've found helpful, and is probably a bit overkill. Feel free to customize your commit message template based on your
preferences, workplace conventions or needs. I like having:

1. Some visual of the line length so I don't go over (plenty of text editor plugins that will do this just as well...or better)
1. A reminder to use imperative language in the subject line.
1. A couple questions that get me thinking not just about what the change is and not even just why make the change? These questions help me
get at the _most important concept_ behind a commit. Yes, why did you make the change, but also _for what purpose / towards what objective_.
1. A nice glossary of leading active verbs for the subject line. I often find myself gazing down there and rewriting my subject line in
accordance with one of these. I don't always follow those leading active verbs militantly--but my commits are always better when I do.

## Credit

** I've seen this a few places but the first was [here](https://robots.thoughtbot.com/better-commit-messages-with-a-gitmessage-template) by [Thoughtbot](https://thoughtbot.com/)  **

** You can find more in [the Git Docs](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration) just under the heading `Basic Client Configuration`**
