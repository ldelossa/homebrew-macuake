# Macuake Homebrew tap

A personal tap for the [ldelossa Macuake fork](https://github.com/ldelossa/macuake).
This is not the upstream project or an official Homebrew cask.

## Install

Apple Silicon and macOS 14 or later are required.
After a fork release is published:

```sh
brew tap ldelossa/macuake
brew trust ldelossa/macuake
brew install --cask ldelossa/macuake/macuake
```

`brew trust` is a one-time explicit approval that Homebrew 7 requires before it will load a third-party cask.
It records a reversible, local-only trust decision (`brew untrust ldelossa/macuake` undoes it) and does not disable Gatekeeper or quarantine.

The app is Developer-ID signed but intentionally **not notarized**.
If macOS blocks first launch, use **System Settings > Privacy & Security > Open Anyway** after checking that you trust this fork.
Approval may be needed on each Mac.
The cask does not disable Gatekeeper or remove quarantine.

The app retains upstream's `com.maquake.app` identity and is not a side-by-side installation.
Finish terminal work and quit an existing Macuake before replacing it.
For a Homebrew-managed upstream install, uninstall its cask without `--zap` first.
Move any manually installed copy aside yourself before installing this fork.
User preferences and Ghostty configuration are not bundled or overwritten.

## Update

Quit Macuake and finish terminal work first, then run:

```sh
brew update
brew upgrade --cask ldelossa/macuake/macuake
```

Updates are available only when the maintainer publishes a new prebuilt release.
There is no Sparkle update feed or `auto_updates` cask override.
The cask pins an immutable versioned download URL and SHA256.
Uninstallation leaves preferences and Ghostty configuration in place.

## Maintainer

Publish from the clean, pushed `main` checkout of the app repository using its `scripts/publish-release.sh` helper.
The helper validates/signs the archive locally, verifies uploaded bytes and commits the corresponding cask here.
Private signing keys stay in Keychain; no signing or notarization secrets are stored in this repository or CI.
See the app repository README for complete build and publishing instructions.

MIT licensed; bundled app components retain their own licenses.
