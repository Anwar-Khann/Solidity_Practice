//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Mappings{
   mapping(uint => string) public EMP;
   
   function Setval() public {
       EMP[32] = "ANWAR";
       EMP[45] = "TABISH";
       EMP[65] = "JAVEED";
   }

   function getVal(uint _id) public view returns(string memory){
       return EMP[_id];
   }
}

contract AdvanceMappings{
    struct Donor{
        string name;
        uint age;
        string occupation;
        uint amount;
    }

    mapping(address => Donor) public Donordts;

    function addDonor(string memory _name,uint _age,string memory _occupation,
    uint _amount) public{
        Donordts[msg.sender] = Donor(_name,_age,_occupation, 
        Donordts[msg.sender].amount+_amount);
    }

    //us address ka complete data default values par le ajny k liye

    function Delete() public {
        delete Donordts[msg.sender];
    }
    function Toupdate (string memory _name) public {
        Donordts[msg.sender].name = _name;
    }
}