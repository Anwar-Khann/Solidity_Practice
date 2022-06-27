//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Constructor{
      uint public x;
      address public _addr;
     
     constructor() {
          x =132;
          _addr = msg.sender;

     }
}