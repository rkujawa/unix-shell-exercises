BEGIN {
	FS=";";
}

/^[^#]/ {
	inum++;
	total += ($5 * $4) ;	
	clientsum[$2] += ($5 * $4) ;
}	

END {
	print "invoices:" inum;
	print "total:" total;

	bestclient_id = "";
	bestclient_sum = 0;

	for (i in clientsum) {
		if (clientsum[i] > bestclient_sum) {
			bestclient_sum = clientsum[i];
			bestclient_id = i;
		}
	}

	print "best_client:" bestclient_id;
}

