# Homebrew tap for Sill

[Sill](https://getsill.app) shows a window from your Mac, or the whole desktop,
on your iPhone or iPad, where you use it with touch, a trackpad, a keyboard or
Apple Pencil. This tap installs Sill for Mac, the free menu bar app, with
[Homebrew](https://brew.sh). Sill for iPhone and iPad is free on the
[App Store](https://apps.apple.com/app/id6816359860).

Sill for Mac needs a Mac with Apple silicon, on macOS 14 or later.

## Install

```
brew install --cask saffsanity/sill/sill
```

This adds the tap and trusts the `sill` cask in it, and nothing else in it.
Homebrew 6 and later load a cask from a tap like this one only once you trust
it ([Tap Trust](https://docs.brew.sh/Tap-Trust)). Step by step, that is:

```
brew tap saffsanity/sill
brew trust --cask saffsanity/sill/sill
brew install --cask sill
```

The cask installs the same Sill.dmg that
[getsill.app/download](https://getsill.app/download) links, from the
[GitHub release](https://github.com/Saffsanity/sill/releases/latest), and
Homebrew checks its SHA-256 before it installs anything. Sill is signed with a
Developer ID and notarized by Apple, so macOS opens it with no warning beyond
the usual question the first time. Then open Sill from your Applications
folder: [the download page](https://getsill.app/download) says what it asks for
the first time and how to pair your iPhone or iPad.

## Update

Sill's menu tells you when a new version is out, and the cask here is updated
when each release is published. Quit Sill from its menu, then:

```
brew update
brew upgrade --cask sill
```

Your settings, permissions and paired devices stay.

## Uninstall

Before you quit Sill for the last time, remove your devices in Sill's
Settings › Devices: Sill's keys and the list of devices you paired stay in your
Mac's keychain, where only Sill can read them. Then quit Sill and run:

```
brew uninstall --cask sill
```

With `--zap`, Homebrew also removes Sill's settings and its log.

## Homebrew's main repository

This tap is for now. Once Sill meets
[Homebrew's acceptance policy](https://docs.brew.sh/Package-Acceptance-Policy),
the cask moves to Homebrew's main repository, and `brew install --cask sill`
works without this tap.

## License

[Apache License 2.0](LICENSE), as Sill itself. Copyright 2026 Noah Saffer.
