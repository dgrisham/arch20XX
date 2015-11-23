build_pdf
=========

Automatically builds a PDF file from a Markdown or Latex file. Requires the
script `md_build_tex` as well.

To call this script from `vim` while editing a `.md` or `.tex` file, add the
following lines to your `~/.vimrc`:

```vim
autocmd BufRead,BufNewFile *.tex,*.md let @b=':wa:!build_pdf % --filter-comments'
  \ | let @p=':wa:!ssh_print mh247-19 %:r.pdf'
  \ | let @o=':!mupdf %:r.pdf &> /dev/null &'
```
