//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract functions{
    function GetSha(uint _Rollnum,string memory _Name,address _addr) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_Rollnum,_Name,_addr));
    }
    
    function GetKec(uint _Rollnum,string memory _Name,address _addr) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_Rollnum,_Name,_addr));
    }

        function GetRipe(uint _Rollnum,string memory _Name,address _addr) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(_Rollnum,_Name,_addr));
    }
}