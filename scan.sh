docker run --rm -it     -v ~/.ssh:/root/.ssh:ro     -v $PWD:/vuls     -v $PWD/vuls-log:/var/log/vuls     -v /etc/localtime:/etc/localtime:ro      vuls/vuls scan     -config=./config.toml -ssh-config
