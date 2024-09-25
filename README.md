## Dot files for my arch+i3 setup

To install, first of all, I need `git` and `ssh`. The bare bare minimun to the chezmoi installation
```
chezmoi init --apply Kovalski-rgb
```
In case I'll be using a private repo for some reason, run this instead...
```
chezmoi init --apply git@github.com:Kovalski-rgb/dotfiles.git
```

### What I have yet To do/backup:
- [ ] Setup nvim as IDE & backup it!!!
- [ ] Setup a notification service
- [ ] Write instructions for a new, fresh arch install (w/ necessary list of packages + i3)
- [ ] Bash/Zsh customization & backup (maybe time between commands only, not autocomplete and syntax)
