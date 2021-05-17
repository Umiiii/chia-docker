cd /chia-blockchain

. ./activate

chia init

chia init -c /ca

cp /opt/conf/config.yaml ~/.chia/mainnet/config/config.yaml
sed -i 's/localhost/127.0.0.1/g' ~/.chia/mainnet/config/config.yaml

chia start harvester

while true; do sleep 30; done;
