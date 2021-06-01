#!/usr/bin/zsh

mkdir -p /tmp/mrca

working_dir=$(pwd)
for t in `fd --type=d`
do
    cp ${t} /tmp/mrca/ -r
    cd /tmp/mrca/${t}
    paru -U --localrepo --cachedir /tmp/paru  --cleanafter --sign --signdb
    cd ${working_dir}
done
