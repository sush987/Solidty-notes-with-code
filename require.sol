// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//require is used in error handling in function-level
//require does 2 jobs : 1.input validation and 2.access control
//advantage is that 1.require makes gas refund back and 2.all the changes made to a state variable in a function before coming to a require, get reverted back when require becomes false

contract requiree{
    address public owner = msg.sender;
    uint public age = 25;
    function Checkrequire(uint _x) public{
        age = 30;
        require(_x > 2,"value of x is less than 2"); //the string get displayed when the statememt is false and execution stops here
    }

    function onlyOwner() public view {
        require(owner == msg.sender, "not authorized owner");
    }

}
