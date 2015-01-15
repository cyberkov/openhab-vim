# openhab-vim
Vim Syntax files for OpenHAB

### Installing the syntax-files
#### Automatic installation
Paste the following code into a commandline
```
mkdir -p ~/.vim/{ftdetect,syntax} && \
curl -o ~/.vim/syntax/openhab.vim https://github.com/cyberkov/openhab-vim/raw/master/syntax/openhab.vim && \
curl -o ~/.vim/ftdetect/openhab.vim https://github.com/cyberkov/openhab-vim/raw/master/ftdetect/openhab.vim
```

#### Manual installation
- Download the syntax files from https://github.com/cyberkov/openhab-vim
- place them in your home directory under ~/.vim/
- start vim with an openHAB configuration file and it should work.
