mkdir -p neth_1/db
mkdir -p neth_1/keystore
mkdir -p neth_1/secret

mkdir -p neth_2/db
mkdir -p neth_2/keystore
mkdir -p neth_2/secret

mkdir -p prysm_1/.eth2
mkdir -p prysm_1/secret

mkdir -p prysm_2/.eth2
mkdir -p prysm_2/secret



curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh
./prysm.sh beacon-chain generate-auth-secret
cp jwt.hex neth_1/secret/jwt.hex
cp jwt.hex prysm_1/secret/jwt.hex
cp jwt.hex neth_2/secret/jwt.hex
cp jwt.hex prysm_2/secret/jwt.hex