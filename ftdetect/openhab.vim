" Vim ftdetect file
" ----------------------------------------------------------------------------
" Language:             OpenHAB
" Maintainer:           Hannes Schaller <admin@cyberkov.at>
" Latest Change:        2016 Nov 7
" URL:                  https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.items set filetype=openhab-items syntax=openhab expandtab smarttab autoindent copyindent nobomb
au BufRead,BufNewFile *.rules set filetype=openhab-rules syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=if,then,when nobomb
au BufRead,BufNewFile *.persist set filetype=openhab-persist syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=Strategies,Items nobomb
au BufRead,BufNewFile *.sitemap set filetype=openhab-sitemap syntax=openhab expandtab smarttab autoindent copyindent smartindent cinwords=Frame,Group,Text nobomb
au BufRead,BufNewFile *.things set filetype=openhab-things syntax=openhab expandtab smarttab autoindent copyindent smartindent nobomb
