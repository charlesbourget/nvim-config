# AstroNvim Configuration

<!--toc:start-->

- [AstroNvim Configuration](#astronvim-configuration)
  - [How to use](#how-to-use)
  - [Feature toggles](#feature-toggles)

<!--toc:end-->

Based on [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## How to use

- Clone the repository

```shell
git clone https://github.com/charlesbourget/nvim-config
```

- Symlink the directory

```shell
ln -nsf nvim-config ~/.config/nvim
```

- Start Neovim

```shell
nvim
```

## Feature toggles

Certain feature can be toggled use Environment Variable:

| Variable           | Description                        | Default Value |
| ------------------ | ---------------------------------- | ------------- |
| `NVIM_USE_COPILOT` | Toggle between Copilot and Codeium | `false`       |
