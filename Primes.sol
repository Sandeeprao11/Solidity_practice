// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library UIntFunctions {
    function isEven(uint x) public pure returns(bool) {
        return x % 2 == 0;
    }
    function isOdd(uint x) public pure returns(bool) {
        return !isEven(x);
    } 
}


library Prime {
    
    function dividesEvenly (uint _x, uint _y) public pure returns (bool) {
        if (_x % _y == 0){
            return true;
        }else {return false;}
    }

   
}

contract Primes{
     using UIntFunctions for uint;
     using Prime for uint;

    function isPrime(uint _prime) public pure returns (bool){

        if(_prime == 2 || _prime == 3 || _prime== 1 || _prime == 5){
            return true;
        }else{
            if (_prime.isOdd()){
                if (_prime.dividesEvenly(2) || _prime.dividesEvenly(3) || _prime.dividesEvenly(5)){
                    return false;
                }else {
                    return true;
                }
            }else {return false;}
        }
    }

}