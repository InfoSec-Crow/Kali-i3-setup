#!/bin/bash

cd /opt
git clone https://github.com/OPENCYBER-FR/RustHound
cd RustHound
curl https://sh.rustup.rs -sSf | sh
cargo build --release
