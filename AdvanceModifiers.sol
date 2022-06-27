//SPDX-License-Identifier:GPL -3.0;

pragma solidity 0.8.7;

contract Auction {
       bool public condition;
    function CheckStatus(bool _condition) public  returns(bool){
      return condition = _condition;
    }


    //we can also give input in modifiers
    uint public Agee = 23;
    modifier GULAB(uint _x){
        Agee = Agee+ _x;
        _;
    }
    




    uint public Age = 45;
    function age(uint _x) public  returns(uint){
        return Age = Age + _x;
    }
}