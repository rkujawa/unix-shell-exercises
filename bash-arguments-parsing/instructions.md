In the work directory, prepare a script `argparse.sh` that creates a file with appropriate value. File name should be passed via option `-f=filename`, value to be written to the file should be passed via `-v=value` option.

For example:
```
$ ./argparse.sh -f=foo -v=bar
$ cat foo
bar
```

