// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SampleContract {
    string public myString = "Hello World";

    function updateString(string memory _myString) public payable {
        if (msg.value == 1 ether) {
            myString = _myString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}
