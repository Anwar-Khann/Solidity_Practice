//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;
contract dynamicBytes{
    bytes public name;
    constructor()  {
        name = "anwar";
    }

    function GetINdex() public view returns(bytes1){
      return  name[1];
    }

    function Push() public {
        name.push("b");
    }

    function POp() public {
        name.pop();
    }
    function GetLength() public view returns(uint) {
        return name.length;
    }

    function getelem(uint _index) public view returns(bytes1){
        return name[_index];
    }

}