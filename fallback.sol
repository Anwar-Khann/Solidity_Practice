//SPDX-License-Identifier:GPL -3.0;

pragma solidity 0.8.7;


contract Fallbck{

    event log(string _type,address _sender, uint _Type, bytes _data);
    fallback() external payable{
      
      emit log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable{
      emit log("recieve",msg.sender,msg.value,"");
    }

    function CheckBal()public view returns (uint){
        return address(this).balance;
    }

}