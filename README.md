# Judicio - AI-Assisted Judge Platform

Welcome to Judicio, the AI-assisted judge platform that integrates blockchain technology for enhanced transparency, security, and efficiency in legal processes. This README will guide you through setting up the environment and installing all necessary prerequisites.

## Prerequisites

Before you can get started, ensure that you have the following tools and libraries installed on your system.

### 1. Node.js and npm

Node.js is required to run JavaScript code on the server side, and npm is the package manager for Node.js.

**Installation:**

```bash
sudo apt-get update && sudo apt-get install -y nodejs npm
```

### 2. Truffle Framework

Truffle is a development environment, testing framework, and asset pipeline for Ethereum.

**Installation:**

```bash
npm install -g truffle
```

### 3. Ganache

Ganache is a local Ethereum blockchain for development, where you can deploy contracts, develop your DApps, and run tests.

**Installation:**

```bash
npm install -g ganache-cli
```

Alternatively, you can download the [Ganache GUI](https://trufflesuite.com/ganache/) if you prefer a graphical interface.

 **Create a workspace** named **development** in Ganache. In the Truffle projects section, add `truffle-config.js` by clicking the `ADD PROJECT` button.

### 4. Solidity Compiler (solc)

Solidity is the programming language used to write smart contracts for Ethereum.

**Installation:**

```bash
npm install -g solc
```

### 5. Mocha and Chai

Mocha is a test framework for Node.js, and Chai is an assertion library used alongside Mocha.

**Installation:**

```bash
npm install --save-dev mocha chai
```

### 6. MetaMask

MetaMask is a browser extension that allows you to interact with the Ethereum blockchain.

**Installation:**

- Visit [MetaMask](https://metamask.io/) and install the extension for your preferred browser.

### 7. Git (Optional but Recommended)

Git is a version control system that allows you to track changes in your codebase.

**Installation:**

```bash
sudo apt-get install -y git
```

### 8. Visual Studio Code (Optional)

Visual Studio Code is a popular code editor that provides excellent support for JavaScript, Solidity, and more.

**Installation:**

```bash
sudo snap install --classic code
```

## Setting Up the Project

Once you’ve installed all the prerequisites, you can set up your Truffle project and install the necessary dependencies.

### 1. Initialize the Truffle Project

If you haven’t already initialized a Truffle project, do so with the following command:

```bash
truffle init
```

### 2. Install Project Dependencies

Navigate to your project directory and install the required npm packages:

```bash
npm install
```

## Running the Project

1. **Start Ganache**  
   To start a local blockchain instance:

   ```bash
   ganache-cli
   ```

2. **Compile Contracts**  
   Compile your smart contracts:

   ```bash
   truffle compile
   ```

3. **Deploy Contracts**  
   Deploy the compiled contracts to the blockchain:

   ```bash
   truffle migrate
   ```

4. **Run Tests**  
   Test your contracts using Mocha and Chai:

   ```bash
   truffle test
   ```

## Contributing

We welcome contributions! Please fork this repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
