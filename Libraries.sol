// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// A simple contract to understand how Libraries work
// Learning - library should be defined outside contract
// Solidity does not support float / decimals... We have to rely on third party library such as ABDKMath64x64.sol

library safeMath{

    function addition(uint a, uint b) public pure returns(uint){

        return a+b;
    }

    function compare(uint a, uint b) public pure returns(bool){
        return a==b?true:false;
    }

    function multiply(uint a, uint b) public pure returns (uint){
        return a*b;
    }

    function subtract(int a, int b) public pure returns (int){
        return a - b;
    }

    function divide(uint a, uint b) public pure returns(uint){
        if(b!=0){
            return a/b;
        }else return 0;
    }

}


contract Libraries {

    using safeMath for uint;
    using safeMath for int;

    function contractAddition(uint _x, uint _y) public pure returns(uint){
        return _x.addition(_y);
    }

    function contractCompare(uint _x, uint _y) public pure returns(bool){
        bool z = _x.compare(_y);
        return z;
    }

    function contractSubtract(int _x, int _y) public pure returns (int){
        return _x.subtract(_y);
    }

    function contractMultiply(uint _x, uint _y) public pure returns (uint){
        return _x.multiply(_y);
    }

    function contractDivide(uint _x, uint _y) public pure returns (uint){
        return _x.divide(_y);
    }
}    