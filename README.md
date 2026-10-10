# erenmalkoc/homebrew-tap

Homebrew casks for [erenmalkoc](https://github.com/erenmalkoc) projects.

## Install

```bash
brew install --cask erenmalkoc/tap/dirtymac
```

Using the full name taps this repository and trusts only the dirtymac cask.
Homebrew 6.0 and later need that trust before they load a cask from a
third-party tap.

## Upgrade

dirtymac has no built-in updater, so new versions come through Homebrew:

```bash
brew upgrade --cask erenmalkoc/tap/dirtymac
```

If dirtymac is running, Homebrew quits it before replacing it and opens it
again afterwards.

Once the cask is trusted, a plain `brew upgrade` picks up new versions too.
If you installed dirtymac before Homebrew 6.0 and have not trusted it since,
a plain `brew upgrade` skips it without saying so. Run the command above once:
the full name trusts the cask and upgrades it.

## Uninstall

```bash
brew uninstall --cask dirtymac
```

Add `--zap` to also delete its preferences.

## Trust errors

Installing by the short name, as in `brew install --cask dirtymac` after a
manual `brew tap erenmalkoc/tap`, needs the cask to be trusted first.
If a command stops with
`Refusing to load cask erenmalkoc/tap/dirtymac from untrusted tap`,
trust only this cask:

```bash
brew trust --cask erenmalkoc/tap/dirtymac
```

Or trust every current and future cask in this tap with
`brew trust erenmalkoc/tap`.

## Available casks

| Cask | Description | Requires |
| --- | --- | --- |
| [dirtymac](https://github.com/erenmalkoc/dirtymac) | Menu bar utility that locks the keyboard for cleaning | macOS 14+ on Apple silicon or Intel |
