# legalcodes/homebrew-tap

Homebrew tap for [Paperback](https://paperback.sh/), the reading-first Markdown app for Mac (Apple Silicon).

```bash
brew tap legalcodes/tap
brew trust legalcodes/tap   # Homebrew 7 refuses casks from untrusted taps
brew install --cask legalcodes/tap/paperback
```

The app updates itself after install. The cask is bumped after each release from `packaging/homebrew/Casks/paperback.rb` in the Paperback repo.
