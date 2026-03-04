# Deb Repo:

## Create:

```sh
mkdir repo-tmp 
mkdir -p repo-tmp/DEBIAN
mkdir -p repo-tmp/DEBIAN/control
```

```sh
cat <<EOF > repo-tmp/DEBIAN/control
Package: user-linux-naylor-clib-deb-repo
Version: 1.0
Section: utils
Priority: optional 
Architecture: all
Maintainer: name <name@email.com>
Description: description 

EOF
```