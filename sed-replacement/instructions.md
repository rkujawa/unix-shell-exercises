In the work directory, prepare a sed command file `replacement.sed` which will
modify the text inputted to sed (and output to stdout) in the following manner:

- All occurrences of `license` are replaced with `foowaz`.
- All sentences ending at the end of line are modified to end with `, desu.`. For example:

For example:
```
Some first sentence that mentions license. This one will get modified.
```
Should be changed into:
```
Some first sentence that mentions foowaz. This one will get modified, desu.
```

Work directory also contains `example-text` file that will be used to test
your sed command file.

