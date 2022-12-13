// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// A simple contract to interfact with the first JS

contract simpleContract {
    
    string public myString = "Hello World";
    uint public myValue = 50;

    function setValue(uint _myValue) public {
        myValue = _myValue;
    }

    function setString (string memory _myString) public {
        myString = _myString;
    }

}