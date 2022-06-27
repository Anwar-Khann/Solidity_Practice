//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Aa{
    uint public a;

    constructor () {
        a = 100;
    }

    function setA(uint _a) public {
      a = _a;
    }
}


contract Ba{
    uint public b;

    constructor () {
        b = 100;
        
    }

    function setb(uint _b) public {
      b = _b;
    }
}

contract Cc is Aa,Ba{

}

