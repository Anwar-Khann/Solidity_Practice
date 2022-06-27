//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract OverRiding{

    function ReturnStr() public pure virtual returns(string memory){
        return "anwar";
    }
}

contract Bye is OverRiding{
    
    function ReturnStr() public pure virtual override returns(string memory){
        return "anwar";
    }
}

contract c is OverRiding,Bye{
      
    function ReturnStr()public pure override(OverRiding,Bye) returns(string memory){
        return "anwarKhan";
    }
}
