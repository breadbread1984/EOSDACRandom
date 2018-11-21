#!/bin/bash
index=0
while : ; do
	cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 push action eosdacrandom regrequest "{\"owner\":\"requester\",\"index\":$index,\"handler\":\"getrandom\"}" -p requester11a
	index=`expr "$index" + 1`
	sleep 1s
done
