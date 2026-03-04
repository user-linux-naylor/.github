# Deb Repo:

## Create:

```sh
mkdir repo-tmp 
mkdir -p repo-tmp/DEBIAN
mkdir -p repo-tmp/DEBIAN/control
mkdir -p repo-tmp/usr/local/bin
mkdir -p data/data/com.termux/files/usr/bin/bash
```

```sh
cat <<EOF > repo-tmp/DEBIAN/control
Package: username/repo
Version: 1.0
Section: utils
Priority: optional 
Architecture: all
Maintainer: name <name@email.com>
Description: description 

EOF
```