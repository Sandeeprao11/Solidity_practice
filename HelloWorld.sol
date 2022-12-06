// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// A simple contract with a variable and a function

contract helloWorld{

    string variable;

    function publish() public {
        variable = "Hello World";

    }
}