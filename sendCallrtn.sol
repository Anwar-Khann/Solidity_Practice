//SPDX-License-Identifier:GPL-3.0;

pragma solidity 0.8.7;

contract Call_Send_Transfer{

    // address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
     

     receive () external payable {

     }

     function CheckBal() public view returns(uint){
      return address(this).balance;
     }


     function Send(address payable getter) public payable {
        bool sent = getter.send(msg.value);
        require(sent,"transaction is failed");
     }


     function Transfer(address payable getter) public payable{
         getter.transfer(msg.value);
     }

     //ab hum call ka istimal karain gy

     function Call(address payable getter) public payable {
         (bool sent,) = getter.call{value:msg.value}("");
         require(sent,"transaction is faiiled");
     }
}


contract GetETh{


    receive () payable external {

    }


    function CHeckBal()public view returns(uint){
        return address(this).balance;
    }
}