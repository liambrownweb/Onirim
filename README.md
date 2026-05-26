# Ghosts of Egypt - Git Workflow Notes

This file is a practical guide for keeping this Godot repository clean and easy to collaborate on.

## Goal

Keep version history focused on real game changes, not generated cache files or machine-specific noise.

## What To Commit (Godot)

Commit these because they are source of truth:

- GDScript files (`*.gd`)
- Scenes and resources (`*.tscn`, `*.tres`)
- Project config (`project.godot`, custom `*.cfg`)
- Art/audio/assets used by the game
- Godot UID files (`*.uid`) in Godot 4
- Import metadata files (`*.import`) when present in the project tree

## What Not To Commit

Do not commit generated or local environment files:

- `.godot/` cache/import pipeline data
- Export/build output folders (`android/`, `build/`, `dist/`, `exports/`)
- OS/editor temporary files and logs

These are already handled by `.gitignore`.

## Why `.gitattributes` Matters

The repository includes `.gitattributes` to:

- Normalize line endings (`LF`) across operating systems
- Keep text assets readable in diffs (`*.gd`, `*.tscn`, `*.tres`, shaders)
- Mark binary assets as binary (images/audio/fonts) to avoid bad merges

## Daily Workflow

1. Pull latest changes.
2. Work on one small task at a time.
3. Run the game and verify behavior.
4. Review changed files before commit.
5. Commit with a clear message.

Use this commit style:

- `feat: add dream card draw animation`
- `fix: prevent deck underflow on reshuffle`
- `refactor: split deck logic from game controller`
- `chore: update gitignore and gitattributes`

## Before Every Commit Checklist

- Only intended files are staged.
- No `.godot/` files are staged.
- Scenes load and game starts.
- Commit message explains what changed and why.

## Branch Strategy (Simple)

- Keep `main` stable.
- Create short-lived feature branches:
  - `feat/title-menu`
  - `fix/deck-reshuffle`
- Merge back when tested.

## Useful Commands

```bash
git status
git diff
git add -p
git commit -m "feat: ..."
git log --oneline --decorate --graph -20
```

## If You Accidentally Stage Noise

Unstage everything, then stage intentionally:

```bash
git restore --staged .
git add -p
```

If a file should be ignored but is already tracked, remove it from tracking once:

```bash
git rm --cached <path>
```

Then commit that change.
