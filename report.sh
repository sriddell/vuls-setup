docker run --rm -it -v ~/.ssh:/root/.ssh:ro -v $PWD:/vuls -v $PWD/vuls-log:/var/log/vuls -v /etc/localtime:/etc/localtime:ro vuls/vuls report -config=./config.toml --ignore-unfixed
