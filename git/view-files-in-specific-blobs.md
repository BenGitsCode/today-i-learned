# How to View Various Git Objects (tags, trees and blobs)

This is one my favorites and I recently saw a [tweet](https://twitter.com/captainsafia/status/864246151767261184) explaining how to fetch a filename
from from a different branch, into your current one.



I use that somewhat frequently but I use this next tip even more often--and it has some really cool optional commands! 🤓

Suppose you want to view a specific file from a specific branch i.e. `What did this look like on master?`

`git show` will (you guessed!) show various types of git objects (blobs, trees, tags, commits).

## Syntax

`git show [options] <object>...`

Let's look at an example:

![git show example1](https://cl.ly/kX1H)

Cool right?

Some things to note: (from the [git-scm docs](https://git-scm.com/docs) of course!)

* For tags, it shows the tag message and the referenced objects.

* For trees, it shows the names (equivalent to git ls-tree with --name-only).

* For plain blobs, it shows the plain contents.

One of my favorite of the aforementioned "really cool optional commands" is using the `>` (shovel operator, I think. Please correct me if I'm using the wrong term) to print a copy of the file to your current directory.

Here's another glorious README example to demonstrate:

[![git show > example2](https://cl.ly/kXA2)



