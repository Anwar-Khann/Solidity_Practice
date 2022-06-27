//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract loops{
    function Loops() public pure returns(uint){
      uint count = 0;
        for(uint i =0; i <20; i++){
            count = count+5;
       
        }
             return count;
    }
 
}

contract loop2{
  function loopdo() public pure returns(uint) {
    uint  count;
    for(uint i =0; i< 12; i++){
          count = count+4;
       }
       return count;
  }
}