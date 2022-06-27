//SPDX-License-Identifier:GPL -3.0;

pragma solidity 0.8.7;

contract Payable{
    address payable public owner = payable(msg.sender);


constructor () payable {
    
}
    function SendEth() payable public{

    }

    function CheckBal() public view returns(uint){
        return address(this).balance;
    }
}