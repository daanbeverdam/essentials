# Command line essentials

A collection of command line essentials I gathered over the years that make life in the shell a lot easier. 🐚

## Install

Clone this repository into a directory of your choice. Then run the `install.bash` script to include the dotfiles in your `.bashrc` and `.gitconfig`.

```
git clone https://github.com/daanbeverdam/essentials.git
cd essentials
bash install.bash
```

## Features

By installing, you obtain the following features:

- Autocomplete for git commands and branches
- Autocomplete for ssh hosts
- A few useful (git) aliases
- Git branch name in prompt
- A few useful settings

Please refer to the files themselves for more specific details.

## Add your own 

If you want to add your own environment specific lines you can create an `.bash_env` file. It will get sourced automatically, no further configuration needed.
