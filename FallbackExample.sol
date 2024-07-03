// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SampleFallback {
    uint256 public lastValueSent;

    string public lastFunctionCalled;

    uint public myUint;

    function setMyUint(uint _myNewUint) public {
        // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001

        // first four bytes (8 symbols) is a function identifier (tells EVM what function to call)
        // web3.utils.sha3("setMyUint(uint256)") => 0xe492fd842fb25dc4b3c624c80776108b452a545c682a78e4252b5560c6537b79

        // and now we can notice that first four bytes are identical (e492fd84)

        myUint = _myNewUint;
    }

    receive() external payable {
        // it can only rely on 2300 gas which is really low

        lastValueSent = msg.value;

        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;

        lastFunctionCalled = "fallback";
    }
}
