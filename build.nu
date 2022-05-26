#!/usr/bin/env nu

mkdir /tmp/mrca

let working_dir = $env.PWD
let targets = (ls | where type == dir | get name)

for target in $targets {
    cp $target /tmp/mrca/ -r
    cd ('/tmp/mrca/' + $target)
    paru -U --localrepo=kagami --cachedir /tmp/paru --nochroot --cleanafter --sign --signdb
}
