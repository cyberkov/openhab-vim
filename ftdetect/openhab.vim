" Vim ftdetect file
" Language:             OpenHAB
" Maintainer:           Hannes Schaller <admin@cyberkov.at>
" Latest Change:        2016 Nov 7
" URL:                  https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.items set filetype=items syntax=openhab
au BufRead,BufNewFile *.rules set filetype=rules syntax=openhab
au BufRead,BufNewFile *.persist set filetype=persist syntax=openhab
au BufRead,BufNewFile *.sitemap set filetype=sitemap syntax=openhab
au BufRead,BufNewFile *.things set filetype=things syntax=openhab
