// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// A simple contract to understand how IF-Else statements work

contract ifElse{

    function foo(uint x) public pure returns (string memory){

        if (x < 10){
            return "I am less than 10";
        } else if (x<20){
            return "I am greater than 10 but less than 20";
        } else {
            return "I am greater than 20 and remain unbounded";
        }
    }
}