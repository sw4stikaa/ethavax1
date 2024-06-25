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
