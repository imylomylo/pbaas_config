#!/bin/bash
#
# create varrr data dir
VARRR_DATADIR=$HOME/.verus/pbaas/e9e10955b7d16031e3d6f55d9c908a038e3ae47d # ends in e47d
VARRR_CONFFILE=$VARRR_DATADIR/e9e10955b7d16031e3d6f55d9c908a038e3ae47d.conf # ends in 347d.conf
mkdir -p $VARRR_DATADIR

USER=$(openssl rand -hex 16)
PASS=$(openssl rand -hex 16)

cat <<EOF > ${VARRR_CONFFILE}
rpcuser=user$USER
rpcpassword=pass$PASS
rpcport=20778
server=1
txindex=1
rpcworkqueue=256
rpcallowip=127.0.0.1
rpchost=127.0.0.1
ac_algo=verushash
ac_veruspos=50
ac_cc=1
launchsystemid=i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV
parentid=i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV
systemid=iExBJfZYK7KREDpuhj6PzZBzqMAKaFg7d2
startblock=2986660
endblock=0
gatewayconverterissuance=50000000000000
ac_supply=940000000000000
ac_halving=0,0,0
ac_decay=0,0,0
ac_reward=8000000,200000,0
ac_eras=3
ac_end=1125001,6125001,0
ac_options=268,268,268
port=20777
seednode=198.244.188.47:20777
seednode=37.187.149.92:20777
seednode=46.4.87.18:20777
seednode=51.161.198.160:20777
seednode=178.159.2.25:20777
seednode=49.12.127.113:20777
seednode=136.243.227.137:20777

#################
### OPTIONAL EXTRAS
### allow from LAN
#rpcallowip=10.202.0.0/24 
### enable zmq
#zmqpubrawtx=tcp://0.0.0.0:20780
#zmqpubhashblock=tcp://0.0.0.0:20780
EOF

echo "Config created at $VARRR_CONFFILE"
