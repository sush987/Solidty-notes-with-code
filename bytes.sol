// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract bytesType{
    bytes5 public temp;
    bytes7 public temp1;
    function setvalue() public {
        temp = "abcde";
        temp1 = "12abcde";
        //these get stored as ascii values
    } 
    function getdigit(uint index) public view returns(bytes1){
        return temp[index];
    }
    function getlength() public view returns(uint){
        return temp.length;
    }
}