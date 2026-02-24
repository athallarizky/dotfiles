# dotfiles

Hey there! Welcome to my personal dotfiles repo. This is where I keep all my config files, settings, and random tweaks that make my macOS feel like home.

## What's Inside?

```
dotfiles/
├── zsh/        # Shell configs & aliases
├── ghostty/    # Terminal emulator settings
├── zed/        # Editor configuration
├── git/        # Git config & aliases
├── npm/        # npmrc settings
├── claude/     # Claude Code configuration
├── factory/    # Factory settings
├── agents/     # Custom AI agent skills
├── env/        # Environment variables
└── docs/       # Notes & documentation
```

## The Setup

I'm rocking a macOS setup with some neat tools:

- **Terminal:** Ghostty + Zsh + Oh My Zsh
- **Editor:** Zed (super fast, AI-native)
- **Launcher:** Raycast (spotlight on steroids)
- **Browser:** Arc & Brave
- **AI Assistant:** Claude Code (this guy right here)

## Installation

Clone this repo and symlink whatever you need:

```bash
git clone https://github.com/athallarizky/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Then use GNU Stow to symlink configs (or do it manually if you're old school):

```bash
stow zsh
stow git
stow npm
# ... and so on
```

## What Are Agent Skills?

In the `agents/skills/` folder, you'll find some custom skills I've made for Claude Code. Feel free to borrow them or write your own!

- **Frontend skills** - React, Vercel best practices
- **Backend skills** - API patterns, server-side stuff
- **Shared skills** - General dev utilities

## Contributing

This is mostly for my personal setup, but if you find something useful, go ahead and steal it! If you spot something that could be better, feel free to open an issue or PR.

## Credits

Inspired by countless dotfiles repos from the community. Standing on the shoulders of giants, as they say.

---

Made with :heart: by [athallarizky](https://github.com/athallarizky)
