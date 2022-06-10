// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract loop{


   function loopaa() public pure returns(uint){
     uint count = 0;
     
     for(uint i =0; i<10; i++){
        count = count + 5;


     }
     //return count;

   
     uint j = 0;
     while(j<10){
       count = count + 5;
       j = j+1;

     }
   return count;
   }

}