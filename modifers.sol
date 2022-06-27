//SPDX-License-Identifier:GPL -3.0;

pragma solidity 0.8.7;

contract Modifiers{


    modifier SameCode{
            for(uint i = 0;i < 10;i++){
               
           }
           _;
    }
    function fun1() public pure SameCode  returns(string memory){
       
           return "fun1 says hello";
    }

     function fun2() public pure SameCode returns (uint _num){
        
         _num = 45;
    }

     function fun3() public view  SameCode returns (address){
        
        return msg.sender;
    }
}