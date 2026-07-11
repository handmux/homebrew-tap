# handmux Homebrew tap

Homebrew formula for [**handmux**](https://handmux.com) — a mobile-web gateway to a shared tmux
server: drive your live tmux session (Claude Code / Codex / anything a terminal can run) from your
phone's browser.

## Install

```sh
brew install handmux/tap/handmux
```

This pulls in `node` and `tmux` automatically, so you don't need either installed first. Then:

```sh
handmux start   # prints a QR code — scan it with your phone
```

> Already have Node? `npm i -g handmux` is lighter (it reuses your existing Node instead of
> installing Homebrew's). Homebrew is the zero-prerequisite path for machines without Node.

> **⚠️ Intel Macs with a non-Homebrew Node:** if you installed Node via the official `.pkg` or a
> tarball into `/usr/local` (the same prefix Homebrew uses on Intel), installing this formula makes
> Homebrew manage `/usr/local/bin/node`, and a later `brew uninstall` + `brew autoremove` can remove
> it. This is the generic Homebrew ↔ `/usr/local` Node collision, not specific to handmux — it does
> **not** affect Apple Silicon (`/opt/homebrew`), `nvm`/`fnm`/`volta`, or machines with no Node. If
> you already have Node this way, prefer `npm i -g handmux`.

## Upgrade

```sh
brew update && brew upgrade handmux
```

Don't use `handmux update` on a Homebrew install — that self-updates via npm and conflicts with
Homebrew's management. Always upgrade with `brew upgrade handmux`.

## Docs

Full docs at [handmux.com/docs](https://handmux.com/docs). Source: [handmux/handmux](https://github.com/handmux/handmux).
