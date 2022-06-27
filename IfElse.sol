//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract ifelse{
    function CheckCondition(uint _number) public pure returns(string memory){
        string memory message;
        if(_number < 100) {
            message = "its less than 100";
        }
        else if(_number == 100){
            message = "its equal";
        }else if (_number > 100) {
            message = "its greater than 100";
        }
        //csn be achieved all this by ternary operator;
        message = _number <100 ? "its smaller than" : "uncertain";
        return message;
    }
}