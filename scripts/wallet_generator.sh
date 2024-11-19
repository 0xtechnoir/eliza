#!/bin/bash

# Generate a new Solana keypair
solana-keygen new --outfile keypair.json --no-bip39-passphrase

# Extract the public and private keys
private_key=$(cat keypair.json | jq '. | join(", ")')
public_key=$(solana-keygen pubkey keypair.json)

# Display the keys and wallet address
echo "Private Key: [$private_key]"
echo "Public Key: $public_key"
echo "Wallet Address: $public_key"
