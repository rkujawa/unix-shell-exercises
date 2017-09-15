In the work directory, prepare a script `argparse-getopt.sh`.

The script should read an input file. It should output (on standard output) the first line starting with `s` letter. Input file is a mandatory argument. 

For example:
```
$ ./argparse-getopt.sh /etc/passwd
sync:x:5:0:sync:/sbin:/bin/sync
```

The script should also accept a few optional parameters.

- The `-a` or `--all` argument should cause all lines starting with `s` from the intput file to be outputted (not just the first match).
- The `-o` or `--output` should redirect output to a file specified directly after this option (i.e. `-o output.txt`).
- Short explanation of usage should be displayed if `-h` or `--help` was passed to the script. Failure in parameters parsing should also result in this help displayed.

Use GNU getopt to parse arguments.

