# git-tools

My git tools. These help me with various git tasks on various platforms.

If they're useful for you, great. If not, no big deal.


## vim/.vimrc

The vimrc file contains a shortcut that simplifies my Jira workflow.

Assuming that your branch name contains a Jira tag ("FOO-1234"), then hitting
F5 will automatically put the tag at the top of the file, followed by a colon
and a space, and leave you in insert mode.

Just add `source <path-to-your-clone>/vim/.vimrc` to your `~/.vimrc` to use.

## git/.gitconfig

Various aliases that shorten my daily effort. Some of these are just shorter,
some are a bit more savings.

* pushu

  Sometimes I create my branch locally and then want to push it upstream. This
  combines both into one.  If you have `checkout.defaultRemote` set, will use that
  upstream instead.

See [how to include another gitconfig in yours](https://stackoverflow.com/questions/1557183/is-it-possible-to-include-a-file-in-your-gitconfig).

## bin

Tools that add to git in ways more complex than should be in a simple alias. Add this
directory to your PATH to enable.

* git-swhist

  With git taking `-` or `@{-2}` as short forms for recently checked out branches,
  the question is, what was your branch 5 checkouts ago anyway? This outputs a brief
  list of checkout history (only the most recent 10 unique branches) by using
  `git reflog`, and pulling out the data.

  This also has options to automatically check out the other branch as well allowing
  you to just hit up-arrow and then put in the number. The number doesn't need any
  of the `@{-}` characters - just digits is fine.

  If the option is `-?` or `-all`, it will show all the numbers for the last 10
  branches, not just the ones that `git switch` understands, which can then be fed
  back into cohist.

  And if the option is `/.../`, then it will use that regex to find the most recently
  used branch that matches, and switch to that branch. Useful if your branch names have
  non-overlapping unique names, such as Jira tags (usually).
