# ETH+AVAX PROJECT
## PROJECT TITLE
Write a smart contract that implements the require(), assert() and revert() statements.
## LANGUAGE USED
Solidity
## IDE USED
Remix IDE
## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.In this program we have used error handling.For handling errors in solidity, there are special keywords which are used to handle the exceptions named as require,revert and assert.
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
```solidity

// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;
contract MyContract {
    function _Require(uint i) public pure returns (string memory){
        require(i > 10, "The number is less than 10. Input must be greater.");
        return("Input is valid.");
    }
    function _Revert(uint j) public pure returns (string memory) {
        
        if (j < 10) {
            revert("Input must be greater than 10. Invalid input.");
        }
        else {
            return("Input is valid.");
        }
    }
    bool result;
    function _Assert(uint k) public {
        assert(k == 0);
        result=true;
    }

    function getResult() public view returns (string memory){
        if(result==true){
            return("Invalid input");
        }
        else{
            return("Input is valid");
        }

    }}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the _Require, _Revert, _Assert function. 

## Authors

Swastika Thakur
[https://github.com/sw4stikaa]


## License

This project is licensed under the MIT License
