# vuls-setup
Simple setup scripts for using vuls.io via docker

## Installation

Requires an instance running docker.  Ubuntu 18 is recommended.

The scripts assume you are going to run as root, although it shouldn't be required.

Run the install.sh script.  This will create the vuls databases in the current directory.

So that you won't be prompted to accept the identity of each scanned host, either edit ~/.ssh/config and make sure it has

```
Host *
    StrictHostKeyChecking no
```

or make sure that all of the servers you define to be scanned are in known_hosts.

Edit the config.toml and update the default section for the user name, key, etc to use to ssh into the servers to be scanned.

Note that you can also specify this on a per-server basis if you use different keys, login users, etc.  See the vuls documentation at https://vuls.io/

Under the servers section in config.toml, identify the servers to scan in the format

```
[servers.my-server-1]
host = "my-server-1.mydomain.com"
```

## Updating

Run the update.sh script to update the local CVE databases

## Scanning and Report
Run the scan.sh to scan the servers specified in config.toml, then run report.sh to report on the results of the scan.

Each time you want fresh results, you need to scan and report.

Note that the report script by default sets the report to ignore vulnerabilities for which no patches have been released.  If you want to see these, edit the report.sh and remove the --ignore-unfixed switch.


