#!/bin/bash
#
# create chips data dir
CHIPS_DATADIR=$HOME/.verus/pbaas/f315367528394674d45277e369629605a1c3ce9f # ends in ce9f
CHIPS_CONFFILE=$CHIPS_DATADIR/f315367528394674d45277e369629605a1c3ce9f.conf # ends in ce9f.conf
mkdir -p $CHIPS_DATADIR

USER=$(openssl rand -hex 16)
PASS=$(openssl rand -hex 16)

cat <<EOF > ${CHIPS_CONFFILE}
rpcuser=user$USER
rpcpassword=pass$PASS
rpcport=22778
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
systemid=iJ3WZocnjG9ufv7GKUA4LijQno5gTMb7tP
startblock=3414690
endblock=0
gatewayconverterissuance=15000000000000
ac_supply=1984994997690000
ac_halving=12600000
ac_decay=0
ac_reward=3968258
ac_eras=1
ac_end=0
ac_options=264
blocktime=10
powaveragingwindow=180
notarizationperiod=60
port=22777
seednode=144.217.65.10:22777
seednode=198.244.188.47:22777
seednode=15.235.160.231:22777
seednode=167.114.197.250:22777
seednode=51.161.198.160:22777

#################
### OPTIONAL EXTRAS
### allow from LAN
#rpcallowip=10.204.0.0/24 
### enable zmq
#zmqpubrawtx=tcp://0.0.0.0:22780
#zmqpubhashblock=tcp://0.0.0.0:22780
EOF

chmod 600 $CHIPS_CONFFILE
echo "Config created at $CHIPS_CONFFILE"
