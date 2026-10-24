# andrew-waters/tap

Homebrew casks for andrew-waters' apps.

```bash
brew install --cask andrew-waters/tap/gannin
```

| Cask | App |
| --- | --- |
| `gannin` | [Gannin](https://gannin.ai), workload across the GitHub orgs you belong to |

Gannin updates itself with Sparkle, so the cask is `auto_updates` and `brew upgrade` leaves it
alone (`brew upgrade --greedy` doesn't). Each Gannin release bumps `Casks/gannin.rb` from its
release workflow; see `docs/RELEASING.md` in andrew-waters/gannin.
