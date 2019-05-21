#!/bin/bash
docker run --rm vuls/go-cve-dictionary -v
docker run --rm vuls/goval-dictionary -v
docker run --rm vuls/gost -v
docker run --rm -it -v $PWD:/vuls princechrismc/go-exploitdb fetch exploitdb
docker run --rm -it -v $PWD:/vuls princechrismc/go-exploitdb fetch awesomepoc
docker run --rm -it -v $PWD:/vuls princechrismc/go-exploitdb fetch githubrepos
docker run --rm vuls/vuls -v
