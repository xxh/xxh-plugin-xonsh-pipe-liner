# xxh-plugin-pipe-liner

Pipe liner plugin adds `pl` alias and allows modify strings from pipe. Install:
```
cd ~/.xxh/plugins
git clone --depth 1 https://github.com/xonssh/xxh-plugin-pipe-liner
```

## Usecases

### Python way to line modification
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

### Splitting
```
$ cat /etc/passwd | head -n 3
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin

$ cat /etc/passwd | head -n 3 | pl "line.split(':')[6]"
/bin/bash
/usr/sbin/nologin
/usr/sbin/nologin
```

### Imports
```
$ import re
$ cat /etc/passwd | head -n 3 | pl "re.sub('/bin/bash', '/usr/bin/xonsh', line)"
root:x:0:0:root:/root:/usr/bin/xonsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
```

### Arrays
```
$ cat /etc/passwd | head -n 3 | pl "line.split(':')" | grep nologin | pl "':'.join(eval(line)[::-1])"
/usr/sbin/nologin:/usr/sbin:daemon:1:1:x:daemon
/usr/sbin/nologin:/bin:bin:2:2:x:bin
```

### Operations chaining in lambda (Python 3.8)
```
$ ls -1 / | head -n3 | pl "[s:='b', line.replace(s, s.upper()+')')][-1]"
B)in
B)oot
dev
```

### Line number
```
$ ls -1 / | head | pl "'*'*len(line) if num%3 == 0 else line"
***
boot
dev
***
home
initrd.img
**************
lib
lib32
*****
```

## Thanks
* @laloch for https://github.com/xonsh/xonsh/issues/3366
