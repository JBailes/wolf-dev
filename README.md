# wolf-dev

Local development workspace for [Games on Whales](https://github.com/games-on-whales) — a project for streaming virtual desktops and games running in Docker via Moonlight.

## Quick Start

```bash
# Clone all Games on Whales repositories into this workspace
./clone-all.sh
```

## What's Here

This repo acts as an umbrella workspace. The `clone-all.sh` script pulls down every repository from the [games-on-whales](https://github.com/orgs/games-on-whales/repositories) GitHub org as subdirectories. Each cloned repo is gitignored so this wrapper stays lightweight.

### Key Repositories

| Repo | Description |
|------|-------------|
| [wolf](https://github.com/games-on-whales/wolf) | Stream virtual desktops and games running in Docker |
| [gow](https://github.com/games-on-whales/gow) | Dockerized games and apps (Steam, Firefox, Retroarch, etc.) |
| [wolf-ui](https://github.com/games-on-whales/wolf-ui) | UI for Wolf — the main entrypoint when starting a streaming session |
| [inputtino](https://github.com/games-on-whales/inputtino) | Virtual input library (mouse, keyboard, joypad, trackpad) |
| [gst-wayland-display](https://github.com/games-on-whales/gst-wayland-display) | Micro Wayland compositor as a GStreamer plugin |
| [Sunshine](https://github.com/games-on-whales/Sunshine) | Self-hosted game stream host for Moonlight |
| [moonlight-qt](https://github.com/games-on-whales/moonlight-qt) | GameStream client for PCs |
| [fenrir](https://github.com/games-on-whales/fenrir) | Manage multiple distributed Wolf instances in K8S |

See `clone-all.sh` for the full list of repositories.
