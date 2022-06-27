//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract A{
    string public add;
    uint public age;

    constructor(string memory _add,uint _age){
        add = _add;
        age = _age;
    }
}

contract B{
    string public name;
    uint public salary;

    constructor(string memory _name,uint _salary){
        name = _name;
        salary = _salary; 
    }
}

// there is a way to pass parent constructor

contract C is A("DELHI",32),B("ANWAR",200000){

}

contract  D is A,B{

    //another way to pass a constructor in inheritance
    constructor() A("karachi",32) B("anwar",450000){

    }
}

contract E is A,B{
    constructor(string memory _add,uint _age,string memory _name,uint _salary) A(_add,_age)
    B(_name,_salary){}
}

//contract to pass dynamic and fixed values

contract F is A("karachi",43),B{
    constructor(string memory _name,uint _salary) B(_name,_salary){
        
    }
}