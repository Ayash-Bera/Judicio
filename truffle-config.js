module.exports = {
    networks: {
      // Local development network (Ganache)
      development: {
        host: "127.0.0.1",     // Localhost (default: none)
        port: 8545,            // Standard Ethereum port (default: none)
        network_id: "*",       // Any network (default: none)
      },
  
      // Example for deploying to a public testnet (Ropsten)
      ropsten: {
        provider: () => new HDWalletProvider(
          process.env.MNEMONIC, // Your mnemonic seed phrase
          `https://ropsten.infura.io/v3/${process.env.INFURA_API_KEY}` // Infura API key
        ),
        network_id: 3,         // Ropsten's network id
        gas: 5500000,          // Gas limit
        confirmations: 2,      // Number of confirmations to wait between deployments
        timeoutBlocks: 200,    // Number of blocks before a deployment times out
        skipDryRun: true       // Skip dry run before migrations
      },
  
      // Add other networks if needed (e.g., mainnet)
    },
  
    // Set default mocha options here, use special reporters, etc.
    mocha: {
      // timeout: 100000
    },
  
    // Configure your compilers
    compilers: {
      solc: {
        version: "0.8.0",    // Fetch exact version from solc-bin (default: truffle's version)
        settings: {          // See the Solidity docs for advice about optimization and evmVersion
          optimizer: {
            enabled: true,
            runs: 200
          },
          evmVersion: "istanbul"
        }
      }
    },
  
    // Truffle DB is disabled by default; to enable it, change enabled: false to enabled: true
    db: {
      enabled: false
    }
  };
  