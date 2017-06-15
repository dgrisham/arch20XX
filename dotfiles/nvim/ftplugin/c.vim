:map <leader>b :!clear && gcc --std=c99 % -o %:r<cr>
:map <leader>r :!clear && gcc --std=c99 % -o %:r && ./%:r
