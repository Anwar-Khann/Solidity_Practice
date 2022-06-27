//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract REQUIRE{
    uint public number;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function getnum(uint _number) public  {
        require(msg.sender == owner,"you are not the owner");
        require(_number > 20,"number is smaller");
        number =_number;
    }

}