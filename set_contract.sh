#!/bin/bash

#key for random account
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 wallet import --private-key 5KHa8jpUFG771Qvxzq2ND7pBmMsBSWLQiWQexh8w5BBeEbUUx3M
#key for seed accounts
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 wallet import --private-key 5JT4L5vz3HBLd1NisFD1RrM85oeFq7axc58271cKD1J9sBid1bk
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 wallet import --private-key 5JLt7YrPbREMBgo6X5HXK3Vq3Sn1CFJM4JYPdtzWh2bruUBDN6w
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 wallet import --private-key 5JxFc9aMB9f7B2JNQ9oUGv1q7w9TDL8HUMwCFVt5BD8Rga61HjN
#key for random requester
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 wallet import --private-key 5JSomFPK8F5sZKN5P4FEVwfACRsv3zKPDveL5w53HCLLiJXViiF
#create accounts
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 system newaccount eosio.stake eosdacrandom EOS55MfVEkczBuFkbh9XyGTurk3KSAu9RcA5VTTEbwbcFdsHmhzGK --stake-cpu "10000000.0000 SYS" --stake-net "10000.0000 SYS" --buy-ram "10000.0000 SYS" -p eosio.stake
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 system newaccount eosio.stake seed1111111a EOS8NfQjUMLoj89yUWz3VpZECGM3HvFXinJbTaifGTt4PX3m3f8Ye --stake-cpu "1000.0000 SYS" --stake-net "10000.0000 SYS" --buy-ram "10000.0000 SYS" -p eosio.stake
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 system newaccount eosio.stake seed1111111b EOS6y1ZGm1wst7PVmhhr9fiUeJuVfiba6URdgiXQbkU3k4DP3fHwL --stake-cpu "1000.0000 SYS" --stake-net "10000.0000 SYS" --buy-ram "10000.0000 SYS" -p eosio.stake
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 system newaccount eosio.stake seed1111111c EOS7bSXhVoHdipW1GHjPmbB1LZDVvxCbrMCie7DtXdvx8hTjLoUFb --stake-cpu "1000.0000 SYS" --stake-net "10000.0000 SYS" --buy-ram "10000.0000 SYS" -p eosio.stake
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 system newaccount eosio.stake requester11a EOS789Yo4bDT1afi3B9xk47Y8sQd8tqH4jGqc5Bi8BxTJumjr87eM --stake-cpu "1000.0000 SYS" --stake-net "10000.0000 SYS" --buy-ram "10000.0000 SYS" -p eosio.stake
#set contract
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 set contract eosdacrandom ./eosdacrandom -p eosdacrandom
#set authority
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 set account permission eosdacrandom active '{"threshold":1,"keys":[{"key":"EOS55MfVEkczBuFkbh9XyGTurk3KSAu9RcA5VTTEbwbcFdsHmhzGK","weight":1}],"accounts":[{"permission":{"actor":"eosdacrandom","permission":"eosio.code"},"weight":1}],"waits":[]}' owner -p eosdacrandom -x 10
#set test contract
cleos --wallet-url http://127.0.0.1:6666 -u http://127.0.0.1:8001 set contract requester11a ./requester -p requester11a

