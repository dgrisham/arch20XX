vim
===

Files
-----

### general

- `vimrc`
    + Path: `$HOME/.vimrc`
    + `vim` configuration file

### colors

- `custom.vim`, `custom_md.vim`
    + Path: `$HOME/.vim/colors/{custom.vim, custom_md.vim}`
    + Custom color schemes for `vim`. the first is a general theme, the second
      was created with Markdown syntax coloring in mind. The `.vimrc` applies
      `custom_md.vim` when a `*.md` file is loaded

### ftplugin

- `markdown.vim`
    + adds convenient keyboard shortcuts for Markdown headers
    + requires the line `filetype plugin indent on` (or simply `filetype on`) in
      the `.vimrc`

Additional Info
---------------

- undo
    + the `vimrc` file here turns on persistent undoing (the ability to undo a
      file across multiple opens). requires the folder `$HOME/.vim/undo/` to
      exist
- see the Github pages for the commented-out Vundle plugins in `vimrc` for more
  info on these plugins
