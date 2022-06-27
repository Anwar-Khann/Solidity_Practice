// SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract abytes{
    bytes5 public name;
    bytes7 public designation;

    function setBytes() public{
        name = "Anwar";
        designation = "officer";
    }

    function getIndex() public view returns(bytes1){
       return  name[0];
    }

    function Getlength() public view returns(uint) {
        return designation.length;
    }
}