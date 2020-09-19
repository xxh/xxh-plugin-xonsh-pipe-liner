# DEPRECATED ↓

This xxh-plugin is deprecated because it simulate the [xontrib-pipeliner](https://github.com/anki-code/xontrib-pipeliner) installation. 

The best way to continue using [xontrib-pipeliner](https://github.com/anki-code/xontrib-pipeliner) is to [fork xxh-plugin-prerun-dotfiles](https://github.com/xxh/xxh-plugin-prerun-dotfiles) and add `xontrib-pipeliner` to the `pip-requirements.txt` and `home/.xonshrc` files.

This repository leaved here as an example of xxh-plugin for education reasons.

# DEPRECATED ↑

---------------
---------------
---------------


Pipe liner plugin adds `pl` alias and allows modify strings from pipe.

## Install
From xxh repo:
```
xxh +I xxh-plugin-xonsh-pipe-liner
```
From any repo:
```
xxh +I xxh-plugin-xonsh-pipe-liner+git+https://github.com/xxh/xxh-plugin-xonsh-pipe-liner
```
Connect:
```
xxh yourhost +s xonsh +if
```

## Example
```
$ ls -1 / | head -n5
bin
boot
dev
etc
home

$ ls -1 / | head -n5 | pl "line + ' is here'" | head -n 3
bin is here
boot is here
dev is here
```
