// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract defaultVals{
  uint public x;
  bool public y;
  address public z;
  bytes32 public a;
 
  string public str = "sushma "; //state

  function checkstring() public pure returns(string memory){
      string memory name = "Aman"; //local
      return  name;
  }


  function checkstring2(string memory _str) public pure returns(string memory){
      string memory name = _str; //local
      return  name;
  }


}