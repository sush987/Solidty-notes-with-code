// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract dynamicsizearray{
  uint[] public  arr = [10,12,32334,133,235];
   function fun() public {
       //get function

       uint temp = arr[3];

       //update
       arr[4] = 222;
       arr[2] = temp;

       arr.pop();
   }
   function returnarray() public view returns(uint[] memory){
       return arr;
   }


}

