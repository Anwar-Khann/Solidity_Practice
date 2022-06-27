//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Structs{
    //user defined data type

    struct Players{
        string name;
        uint age;
        address Owner;
    }
    Players[] public Player;
     
     function SetValues(string memory _name,uint _age) public  {
     Players memory khiladi;
     khiladi.name = _name;
     khiladi.age = _age;
     khiladi.Owner = msg.sender;
     Player.push(khiladi);
     }

}