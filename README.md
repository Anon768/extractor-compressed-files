# Extractor compressed files

Utility for extracting compressed files written in bash

## Installation

You can install repository and run a file **extractor.sh**

```sh
git clone https://github.com/name/repository.git 
```

```sh
chmod +x bash.sh
./bash.sh --help
```

## Informations

This version of extractor support this compressed files:

- tar, tgz, tar.gz, tar.bz2, Z, zip, 7z, xz, gz, rar, bz2, tbz2

## Global use in GNU/Linux

You can use this script with all users and on all locations! You just have to follow this guide.

Change name of the file

```sh
# Enter the directory containing the file and rename it's
mv extractor.sh extractor
```

Move the file in /usr/local/bin/

```sh
mv extractor /usr/local/bin/
```

Change owner of the file

```sh
chown your_user:your_user extractor
```
