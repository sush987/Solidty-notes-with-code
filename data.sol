// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract valuesType{
   uint public  age = 21;

   function add(uint _x, uint _y) public pure returns(uint){
        
        return  _x + _y ;


   }

   function changeAge() public {
       age += 1;
   }
   
   function getAge() public view returns(uint){
       return age;
   }
     

   function fun() internal{
     

   }  

}

function dummy(uint x) pure returns(uint){
    return x*10;
}