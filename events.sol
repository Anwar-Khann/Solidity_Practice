//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Events{
    event Details(address Account,string message,uint val);

    function SetVa(uint _val) public {
        emit Details(msg.sender,"your balance",_val);
    }
}

contract Indexing{
    event Chat(address indexed from,address to,string message);


    function GetChatLOg(address _to,string memory _message) public {
        emit Chat(msg.sender,_to,_message);
    }
}