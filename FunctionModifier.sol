// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// A simple contract to understand how modifiers work

contract functionModifier {
    address public owner;
       bool public locked;

    constructor(){
        //set the owner variable to the person invoking this contract 
        owner = msg.sender;
    }

    //This modifier checks if the caller of the function is the owner of the contract
    modifier onlyOwner() {
        require (owner == msg.sender, "Not Owner");
        _;
    }

    // This modifier prevesnts the function from being called while it's still being executed
    modifier noReentrancy() {
        require (!locked, "No Reentrancy");
        locked = true;
        _;

        locked = false;
    }


    function changeOwner(address _newOwner) public onlyOwner{
        owner = _newOwner;
    }


}