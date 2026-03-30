# CLAUDE.md — wolf-dev

## Project Overview

This is an umbrella development workspace for the [Games on Whales](https://github.com/games-on-whales) project. It aggregates all GoW org repos as git-ignored subdirectories for local cross-repo development.

## Repository Structure

- `clone-all.sh` — Script to clone/pull all games-on-whales org repos
- `.gitignore` — Ignores all cloned sub-repos
- Each subdirectory is an independent git repo from the games-on-whales org

## Key Context

- **Wolf** is the core streaming server (C++, GStreamer, Wayland)
- **GoW** is the Docker container collection for running games
- **Inputtino** handles virtual input devices
- **Wolf-UI** is the web frontend (likely React/TypeScript)
- **Sunshine** is a fork of the Moonlight game streaming host
- Sub-repos are independent — each has its own build system and dependencies

## Working in This Repo

- Run `./clone-all.sh` to populate or update all sub-repos
- Changes to sub-repos should be committed within those repos, not here
- This wrapper repo only tracks its own files (README, scripts, .gitignore, CLAUDE.md)
