# Homebrew Tap

Official Homebrew tap for Constellation Lab software. It is organization-owned
distribution infrastructure, not a Constellation codebase or Orbit workspace.

Install Orbit with:

```sh
brew tap constellation-lab-ai/tap
brew install orbit
```

## Cutover note

The seeded `orbit` formula intentionally retains the released 0.18.0 asset
URLs and checksums. Those URLs temporarily point to
`danieljhkim/orbit` releases until an organization-qualified Orbit release is
published; changing them is a later release-cutover task.
