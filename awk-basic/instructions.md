In the work directory, prepare an awk script `report-income.awk` which outputs (on stdout) a report based on data from `invoices.txt` file. 

The `invoices.txt` is a file in CSV format, containing information about payment made by your clients. Each line represents a separate payment. The columns (starting with leftmost) have the following meaning:

- Numeric ID of the invoice.
- ID of the client.
- Name of the product sold to the client.
- Price of the product.

All lines starting with # should be treated as comments and ignored by your script. The script should take no arguments and expect that data will be passed on stdin.

Script should output the following information, all on separate lines:

- How many invoices were issued (exactly: the amount of entries in input file) (prefixed with `invoices: `.
- Total amount of money received from all invoices (prefixed with `total: `).
- ID of the client who spent most money (prefixed with `best_client: `).

The result should be outputted to stdout.

For example:
```
$ awk -f report-income.awk < invoices.txt
invoices:5
total:30500
best_client:some_large_client
```

