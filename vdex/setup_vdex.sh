#!/bin/bash
#
# create vdex data dir
VDEX_DATADIR=$HOME/.verus/pbaas/53fe39eea8c06bba32f1a4e20db67e5524f0309d # ends in 309d
VDEX_CONFFILE=$VDEX_DATADIR/53fe39eea8c06bba32f1a4e20db67e5524f0309d.conf # ends in 309d.conf
mkdir -p $VDEX_DATADIR

USER=$(openssl rand -hex 16)
PASS=$(openssl rand -hex 16)

cat <<EOF > ${VDEX_CONFFILE}
rpcuser=user$USER
rpcpassword=pass$PASS
rpcport=21778
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
systemid=iHog9UCTrn95qpUBFCZ7kKz7qWdMA8MQ6N
startblock=3159230
endblock=0
gatewayconverterissuance=4300000000000
ac_supply=81930000000000
ac_halving=643500
ac_decay=0
ac_reward=777000
ac_eras=1
ac_end=0
ac_options=264
port=21777
seednode=198.244.188.47:21777
seednode=37.187.149.92:21777
seednode=46.4.87.18:21777
seednode=51.161.198.160:21777
seednode=178.159.2.25:21777
seednode=65.109.123.188:21777
seednode=51.195.202.193:21777
#################
### OPTIONAL EXTRAS
### allow from LAN
#rpcallowip=10.203.0.0/24 
### enable zmq
#zmqpubrawtx=tcp://0.0.0.0:21780
#zmqpubhashblock=tcp://0.0.0.0:21780
EOF

echo "Config created at $VDEX_CONFFILE"
