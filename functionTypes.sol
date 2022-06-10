// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract viewandpure{
   uint public age = 20;
   function viewFun() public view returns(uint ){

  //this function only reads age doesn't change it so its a view-only function
       return age;

   }
   function purefun() public pure returns(uint){

   //no read no write functions are pure functions
       return 1;
   }

   function purefun2(uint _x) public pure returns(uint){
     // age = age + _x;
       return _x;
   }

   function simp() public{
       age += 10;
   }
  function dummy() public  returns(uint){
      age+= 10;
      return age;
  }


}