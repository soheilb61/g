chmod -R 777 /root/nulink

pip install virtualenv

virtualenv /root/nulink-venv

source /root/nulink-venv/bin/activate

wget https://filetransfer.nulink.org/release/nulink-0.2.0-py3-none-any.whl

pip install nulink-0.2.0-py3-none-any.whl

pip install --upgrade pip

source /root/nulink-venv/bin/activate

python -c "import nulink"

nulink --help

export NULINK_KEYSTORE_PASSWORD=xxxxxxxxxxxx

به جای ایکس ها اون پسورد که بالاتر وارد کردید و گفتم در ادامه لازمون میشه رو وارد کنید

export NULINK_OPERATOR_ETH_PASSWORD=xxxxxxxxxx

در اینجا هم به جای ایکس ها اون پسوردی که بالاتر دادید رو دوباره وارد کنید

docker run -it --rm \
-p 9151:9151 \
-v /root/nulink:/code \
-v /root/nulink:/home/circleci/.local/share/nulink \
-e NULINK_KEYSTORE_PASSWORD \
nulink/nulink nulink ursula init \
--signer keystore:///code/xxxxxxxxxxxxxxxxxxxxxxx \
--eth-provider https://data-seed-prebsc-2-s2.binance.org:8545/ \
--network horus \
--payment-provider https://data-seed-prebsc-2-s2.binance.org:8545/ \
--payment-network bsc_testnet \
--operator-address yyyyyyyyyyyyyyy \
--max-gas-price 100
