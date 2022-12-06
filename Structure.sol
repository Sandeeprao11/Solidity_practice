// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

// A simple contract to understand how structures work

contract structure {
    struct Person {
        string name;
        uint age;
    }

    struct Employee {
        string empName;
        uint empSalary;
        bool status;
        string jobTitle;
    }

    Person p1;
    Employee e1;

    constructor(){
        p1.name = "Sandeep Rao";
        p1.age = 48;

        e1.empName = "Steve Jobs";
        e1.empSalary = 1000000;
        e1.status=true;
        e1.jobTitle = "CEO";
    }

    function getEmployee() public view returns (Employee memory){
        return e1;
    }

    function getPerson() public view returns (Person memory){
        return p1;
    }

    function setEmployee(string memory _empName, uint _empSalary, bool _status, string memory _jobTitle) public {
        e1.empName = _empName;
        e1.empSalary = _empSalary;
        e1.status = _status;
        e1.jobTitle = _jobTitle;
    }
}