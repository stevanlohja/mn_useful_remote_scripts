#!/bin/bash

# Install Rust and Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Add Rust to PATH
source $HOME/.cargo/env

# Verify installation
rustc --version
cargo --version


# curl -o- https://raw.githubusercontent.com/stevanlohja/mn_useful_remote_scripts/main/install_rust.sh | bash