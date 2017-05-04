" Vim ftdetect file
" Language:             OpenHAB
" Maintainer:           Hannes Schaller <admin@cyberkov.at>
" Latest Change:        2016 Nov 7
" URL:                  https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.items set filetype=openhab-items syntax=openhab
au BufRead,BufNewFile *.rules set filetype=openhab-rules syntax=openhab
au BufRead,BufNewFile *.persist set filetype=openhab-persist syntax=openhab
au BufRead,BufNewFile *.sitemap set filetype=openhab-sitemap syntax=openhab
au BufRead,BufNewFile *.things set filetype=openhab-things syntax=openhab
