" Vim ftdetect file
" Language:		OpenHAB
" Maintainer:          Hannes Schaller
" Last Change:		2014 Dec 3
" URL:                 https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.items set filetype=items syntax=openhab expandtab smarttab autoindent copyindent nobomb
au BufRead,BufNewFile *.rules set filetype=rules syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=if,then,when nobomb
au BufRead,BufNewFile *.persist set filetype=persist syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=Strategies,Items nobomb
au BufRead,BufNewFile *.sitemap set filetype=sitemap syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=Frame,Group,Text nobomb

