# Code Yarns -- How to manage dotfiles using stow

#### Ashwin Nanjappa

-------------------------------------------------------------------------------------------------------------------------
[Code Yarns 💻](..) [Tech Blog](https://codeyarns.github.io/tech/)❖[Personal Blog](https://codeyarns.github.io/personal/)
-------------------------------------------------------------------------------------------------------------------------

(First posted on: 2020-04-20T20:54:14.847231-07:00)

Problem
-------

Configuration and settings of my shell, Vim editor and of lots of other
applications are stored as **dotfiles**. These dotfiles need to be
located at my home directory (`~/.bashrc` for example) or at certain
subdirectories inside it (`~/.config/fish/functions/fish_prompt.fish`
for example). How do I update, replicate and manage all these dotfiles
across multiple computers easily?

Solution
--------

A good solution to replicate and update these dotfiles across multiple
computers is to check in all of them into a **single Git repository**.
This allows me to clone the repo on any computer and update changes from
one computer to all other computers.

Since we are managing dotfiles that will end up being at the home
directory and its subdirectories, the Git repo would need to be the home
directory itself \-- but this is a terrible solution!

What I would like is to have a Git repo that I can place anywhere I
want. It would contain dotfiles in subdirectories inside the Git repo
just as if they were in the home directory. What I would then need is a
simple tool or script to copy or symlink these dotfiles to the actual
locations in the home directory.

And this is exactly what the tool **stow** does.  It can be installed easily:

```bash
\$ sudo apt install stow
```

Not only can stow do the above, it can do one better \-- it allows me to
store the dotfiles of each tool into its own subdirectory. This makes
managing dotfiles far more easier.

For example, I can store the Fish shell prompt file at
`~/some/path/git_dotfiles/fish_dotfiles/.config/fish/functions/fish_prompt.fish`.
And then I can ask stow to create a symlink at
`~/.config/fish/functions/fish_prompt.fish` pointing to this file by
running a command at the root of the Git repo directory:
`stow --restow -v -t $HOME fish_dotfiles`.

So what I have ended up having is dotfiles for each of my tools in their
own subdirectories in the Git repo and then I run one command to create
symlinks of their dotfiles in the home directory:

```bash
\$ stow \--restow -v -t \$HOME bash\_dotfiles fish\_dotfiles
ssh\_dotfiles vim\_dotfiles
```

**Tried with:** stow 2.2.2 and Ubuntu 18.04

[📧](mailto:codeyarns@gmail.com) [Follow
\@codeyarns](https://twitter.com/codeyarns)
[](https://www.buymeacoffee.com/codeyarns)
