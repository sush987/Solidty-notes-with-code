// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract dynamicBytes{
    bytes public temp;
    constructor(){
     temp;
    }
    // function setbyte(bytes memory  _temp) public{
    //     temp = _temp;
    // }
    function pushElements() public{
        temp.push('c');
    }
    function popElement() public
{
 temp.pop();
}

    function getlength() public view returns(uint){
        return temp.length;
    }
}