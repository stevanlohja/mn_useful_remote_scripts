#!/bin/bash

# Check if Rust and Cargo are installed
if command -v rustc &> /dev/null && command -v cargo &> /dev/null; then
    echo "Rust and Cargo are already installed."
else
    # Prompt user for installation confirmation
    read -p "Rust and Cargo are not found. Do you want to install them? (y/n): " choice

    if [ "$choice" == "y" ]; then
        # Install Rust and Cargo
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
        source $HOME/.cargo/env
        echo "Rust and Cargo have been installed."
    else
        echo "Installation aborted. Rust and Cargo are not installed."
    fi
fi

# Verify installation
rustc --version
cargo --version
