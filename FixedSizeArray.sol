// SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract FixedArray{
    uint[5] public arr = [1,2,3,4,5];

    function getArr() public {
        uint temp;

        //get
        temp = arr[3];

        //update

        arr[4] = 8000;

        //delete
        delete arr[0];
    

    //length

    arr.length;


    }

    function getLength() public view returns(uint) {
        uint length = arr.length;
        return length;
    }
} 

contract arrwithloops{
    uint[5] public arr;
    function loopwithar(uint _x) public {
        for(uint i=0;i<arr.length;i++){
            arr[i] = _x;
        }
    }
}