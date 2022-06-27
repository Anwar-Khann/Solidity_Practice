//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Revert_Assert{
    uint public number;

    function check(uint _number) public {
        number = _number;
        if(_number > 12){
            revert("ths transaction can't be done");
        }
    }
}

//function with a revert using custom error

contract B {
    uint public niu;
    
    error Erro(string,address);
    function checck(uint _niu) public {
        niu = _niu;
        if(_niu <10 ){
            revert Erro("can't be done",msg.sender);
        }
    }
}