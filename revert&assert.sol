// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract reverttt{
    address public owner = msg.sender;
    uint public age = 25;
    function Checkrequire(uint _x) public{
        age = 30;
        if(_x<2){
            revert("value of x less than 2");
        }
    }

    function Checkrequire22(uint _x) public{
        age = 30;
        if(_x<2){
            revert throwError("value of x is less than 2");
        }
    }

    function onlyOwner() public view {
        require(owner == msg.sender, "not authorized owner");
    }

    error throwError(string);//this method reduces gas fees

    

}
contract assertt{
       //used to check bugs in the sc or for security
       address owner = msg.sender;
    
    
    function checkOwnership() public view {
        assert(owner == 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
    }


}