" Vim ftdetect file
" Language:		OpenHAB
" Maintainer:           Hannes Schaller
" Last Change:		2014 Dec 3
" URL:                  https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.items set filetype=items syntax=openhab
au BufRead,BufNewFile *.rules set filetype=rules syntax=openhab
au BufRead,BufNewFile *.persist set filetype=persist syntax=openhab
au BufRead,BufNewFile *.sitemap set filetype=sitemap syntax=openhab
