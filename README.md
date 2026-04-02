dotfiles managed with [stow](https://www.gnu.org/software/stow/)

## Usage

```sh
cd ~
stow --dir=/path/to/dotfiles --target=~ .
```

Or if the repo is cloned to `~/dotfiles`:

```sh
cd ~/dotfiles
stow -t ~ .
```
