Vim
===

Files
-----

### General

- `vimrc`
    + Path: `$HOME/.vimrc`
    + `vim` configuration file

### colors

- `custom.vim`, `custom_md.vim`
    + Path: `$HOME/.vim/colors/{custom.vim, custom_md.vim}`
    + Custom color schemes for `vim`. The first is a general theme, the second
      was created with Markdown syntax coloring in mind. The `.vimrc` applies
      `custom_md.vim` when a `*.md` file is loaded

### ftplugin

- `markdown.vim`
    + Path: `$HOME/.vim/ftplugin/markdown.vim`
    + Adds convenient keyboard shortcuts for Markdown headers
    + Requires the line `filetype plugin indent on` (or simply `filetype on`) in
      the `.vimrc`

Additional Info
---------------

- undo
    + The `vimrc` file here turns on persistent undoing (the ability to undo a
      file across multiple opens). requires the folder `$HOME/.vim/undo/` to
      exist
- See the Github pages for the commented-out [Vundle](https://github.com/VundleVim/Vundle.vim)
  plugins in `vimrc` for more info on these plugins.

