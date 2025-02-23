# Considerations
- Place zsh plugin folder and other tidbits into .gitignore instead of creating the zsh directory in .config to avoid the full symlink
  - \+ Helps getting a full picture of what .zshrc is doing
  - \+ install.sh becomes less complex (although it complex at all right now)
  - \+ Easier to debug plugins in case they cause problems
  - \- Clutter the zsh configuration
  - \- .gitignore becomes more complex