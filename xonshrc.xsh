def _pl(args, stdin, stdout):
    fn = eval('lambda line:'+args[0])
    for line in stdin.readlines():
        res = fn(line.rstrip(os.linesep))
        print(res, file=stdout, flush=True)
			
aliases['pl'] = _pl
del _pl
