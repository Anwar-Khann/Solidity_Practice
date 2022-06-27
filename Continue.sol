// SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract statements{
    function loop() public pure returns(uint){
        uint count = 0 ;
        for(uint i=0;i<10;i=i+2){//ye 0 sy start hga 
            //0+3,2+3,4+3,6+3;
            if(i == 6){
                continue;
            }
            count = count+3;
        }
        return count;
    }
}

