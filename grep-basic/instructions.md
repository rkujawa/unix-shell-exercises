In the work directory, prepare a script `grep-my-dmesg.sh` that uses `grep` command to save specific lines from `dmesg.txt` file to several separate files.

- All lines containing `usb` word should be saved to `out-usb.txt`.
- All lines containing information about pci devices (like `pci 0000:00:01.0:`) should be saved to `out-pci.txt`.
- All lines containing the word `disabled` should be saved to `out-disabled.txt`. However, every line should be prefixed with line number from the source file. For example: `26:[    0.000000]   1 disabled`, where 26 is the line number.
- All lines _not_ containing the `a` letter should be saved to `out-no-a.txt`.
- All lines ending with `registered` should be saved to `out-registered.txt`.

