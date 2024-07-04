## Overview
This folder contains additional example Solidity contracts demonstrating various features of the Solidity programming language. Each contract is designed to illustrate a specific concept or functionality within Ethereum smart contracts.

## Contracts

### 1. SampleFallback.sol
**Description:** Demonstrates the use of fallback and receive functions in Solidity.
- **State Variables:**
  - `uint256 public lastValueSent`: Stores the value of the last transaction sent to the contract.
  - `string public lastFunctionCalled`: Stores the name of the last function called (either "receive" or "fallback").
  - `uint public myUint`: An unsigned integer for demonstration.
- **Functions:**
  - `setMyUint(uint _myNewUint)`: Sets the `myUint` variable.
- **Special Functions:**
  - `receive() external payable`: Called when the contract receives Ether with no data.
  - `fallback() external payable`: Called when the contract receives Ether with data that does not match any function signature.

### 2. SampleContract.sol
**Description:** Implements a simple contract with a string variable that can be updated under certain conditions.
- **State Variables:**
  - `string public myString`: Stores a string, initialized to "Hello World".
- **Functions:**
  - `updateString(string memory _myString) public payable`: Updates `myString` if exactly 1 ether is sent with the transaction. Otherwise, refunds the sender.

### 3. SmartMoneyContract.sol
**Description:** Demonstrates how to send and withdraw Ether from a contract.
- **State Variables:**
  - `uint256 public balanceReceived`: Tracks the total balance received by the contract.
- **Functions:**
  - `deposit() public payable`: Allows users to deposit Ether into the contract.
  - `getContractBalance() public view returns (uint256)`: Returns the current balance of the contract.
  - `withdrawAll() public`: Withdraws the entire balance of the contract to the sender's address.
  - `withdrawToAddress(address payable to) public`: Withdraws the entire balance of the contract to a specified address.

## Usage
1. **Compilation:** Use a Solidity compiler (solc) to compile the contracts.
2. **Deployment:** Deploy the contracts using tools like Remix, Truffle, or Hardhat.
3. **Interaction:** Interact with the deployed contracts via web3.js, ethers.js, or directly through the Remix IDE.

## License
All contracts in this folder are licensed under the MIT License