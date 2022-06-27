//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;


contract Visibility{
    uint private count1 = 2000;
    uint internal count2 = 3000;
    uint public count3 = 4000;

    function Private() private pure returns (string memory){
        return "private";
    }

     function Internal() internal pure returns (string memory){
        return "INTERNAL";
    }

     function EXTERNAL() external pure returns (string memory){
        return "EXTERNAL";
    }


     function PUBLIC() public pure returns (string memory){
        return "pUBLIC";
    }

    function checkvars() public view returns(uint) {
        return count2;
    }
}