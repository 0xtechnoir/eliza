const { Keypair } = require('@solana/web3.js');

// Load the private key array

const privateKeyArray = require('./keypair.json');

// Create the keypair from the array
const keypair = Keypair.fromSecretKey(Uint8Array.from(privateKeyArray));

console.log("Public Key:", keypair.publicKey.toBase58());
console.log("Private Key:", keypair.secretKey);