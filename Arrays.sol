// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// A sample contract to test how Arrays are to be handled in Solidity
// Learnings 
    // (1) We cannot use PUSH & POP on an array limited during initiation such as array2 below
    // (2) We can pass array to a function but we have to specify if this is memory or callback
    // (3) Memory arrays don't have the ".push(...)" method available, since that method is only available for dynamic storage arrays and you can't have dynamic memory arrays. 

contract Arrays{

    //declaring three different kinds of arrays
    uint[] public array1;
    uint[15] public array2;
    uint[] public array3 = [1,2,3,4,5];

    //function to retrieve an element within an array at index "x"

    function getElementValue(uint x) public view returns(uint){
        return array2[x];
    }

    //function to insert an element "x" at the end of the array.  This increases the array length by 1

    function pushValue(uint x) public{
        array1.push(x);
    }

    //function to remove the last element from the array.  This decreases the array length by 1

    function popValue() public{
        array1.pop();
    }

    //function to retrieve the length of an array

    function getArrayLength(uint[] calldata _arrayname) public pure returns(uint){
        uint[] memory localArray = _arrayname;
        return localArray.length;
    }

    //function to delete an array element at index "x".  This DOES NOT change array length

    function deleteArrayElement(uint x) public {
        delete array2[x];
    }



}