In the work directory, prepare a script `args.sh` which outputs (on stdout) different text depending on passed arguments. The script should take exactly 2 arguments. First argument should be converted to uppercase, second argument should be converted to lowercase, then both should be concatenated. `tr` is one of available commands that can be used for conversion.

For example:
```
$ ./args.sh foo BAR 
FOObar
```

