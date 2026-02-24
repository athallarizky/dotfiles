# Agent Skills Symlink Setup

## Overview

This repository uses a **single shared skills directory** as the source of truth:

```
dotfiles/agents/skills
```

Both Claude and Factory agents consume skills from this shared directory using symbolic links.

This avoids duplication and ensures skills remain reusable and consistent across agents.

---

## Directory Structure

```
dotfiles/
  agents/
    skills/
      backend/
      frontend/
      shared/

  claude/
    .claude/

  factory/
    .factory/
```

---

## Goal

We want:

```
~/.claude/skills   → dotfiles/agents/skills
~/.factory/skills  → dotfiles/agents/skills
```

Managed via GNU Stow.

---

## Step 1 — Create Symlink Inside Claude Package

From the root of the dotfiles repository:

```bash
cd claude/.claude
ln -s ../../agents/skills skills
```

Result:

```
claude/.claude/
  settings.json
  skills -> ../../agents/skills
```

---

## Step 2 — Create Symlink Inside Factory Package

```bash
cd factory/.factory
ln -s ../../agents/skills skills
```

Result:

```
factory/.factory/
  settings.json
  mcp.json
  skills -> ../../agents/skills
```

---

## Step 3 — Apply with Stow

From the root of `dotfiles`:

```bash
stow -D claude factory   # optional: if previously stowed
stow claude factory
```

This will create:

```
~/.claude/skills   (symlinked)
~/.factory/skills  (symlinked)
```

Both pointing to the shared skills directory.

---

## Why Use Relative Paths?

We use:

```
../../agents/skills
```

Instead of absolute paths to:

- Keep the repository portable
- Avoid hardcoded machine-specific paths
- Make it VPS-friendly
- Keep it version-control safe

---

## Benefits

- Single source of truth
- No duplication
- Easy maintenance
- Scalable architecture
- Compatible with GNU Stow

---

This structure allows both agents to share the same skill definitions while keeping the configuration clean and maintainable.
