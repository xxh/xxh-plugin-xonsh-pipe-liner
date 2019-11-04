# xxh-plugin-pipe-liner

Pipe liner plugin adds `pl` alias and allows modify strings from pipe. Example:
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

### Install
```
cd ~/.xxh/plugins
git clone --depth 1 https://github.com/xonssh/xxh-plugin-pipe-liner
```
