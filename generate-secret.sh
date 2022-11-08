curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh
./prysm.sh beacon-chain generate-auth-secret

for i in {1..6};
do
mkdir -p neth_${i}/db
mkdir -p neth_${i}/keystore
mkdir -p neth_${i}/secret
mkdir -p prysm_${i}/.eth2
mkdir -p prysm_${i}/secret
cp jwt.hex neth_${i}/secret/jwt.hex
cp jwt.hex prysm_${i}/secret/jwt.hex
done;