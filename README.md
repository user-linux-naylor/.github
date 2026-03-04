# Clib Deb Repo:


## Installation:

1. Add the source: 
```sh
echo "deb [trusted=yes] https://raw.githubusercontent.com ./" > $PREFIX/etc/apt/sources.list.d/clib.list
```

2. Install:
```sh
apt update && apt upgrade

apt install binutils

apt install user-linux-naylor-clib-deb-repo -y
```
