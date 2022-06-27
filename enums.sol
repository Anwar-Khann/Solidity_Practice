//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract Enums{
    enum Condition{
        pending,
        shipped,
        acccepted,
        rejected,
        cancelled
    }
    Condition public State;
//to get
    function SetState() public view returns(Condition){
    return State;
    }

    ///bu user

    function UserSet(Condition _State) public {
        State = _State;
    }

    ///bY OUR FUNCTION

    function SetByFunc() public {
        State = Condition.shipped;
    }

    //TO RESET

    function setdefault() public {
        delete State;
    }
}