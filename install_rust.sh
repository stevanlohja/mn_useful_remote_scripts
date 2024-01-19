#!/bin/bash

# Check if Rust and Cargo are installed
if command -v rustc &> /dev/null && command -v cargo &> /dev/null; then
    echo "Rust and Cargo are already installed."
else
    # Install Rust and Cargo
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
    echo "Rust and Cargo have been installed."
fi

# Verify installation
rustc --version
cargo --version
# curl -o- https://raw.githubusercontent.com/stevanlohja/mn_useful_remote_scripts/main/install_rust.sh | bash
# curl -o- https://raw.githubusercontent.com/stevanlohja/mn_useful_remote_scripts/main/install_rust.sh | bash -s
# curl -o- https://raw.githubusercontent.com/stevanlohja/mn_useful_remote_scripts/main/install_rust.sh | source /dev/stdin
