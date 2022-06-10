// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract constr{
    uint public  age; //state variable 
    address public newadd;



    constructor(){
        age = 20;

    }

    function funifelse(uint _x) public pure returns(string memory){
           
           string memory val;
           if(_x > 100){
               val = "greater than hunderd";
           }
           else if(_x<100){
               val = "smaller than hundred";
           }
           else{
               val = "equal to 100";

           }

           return val;

    }

    function ternary(uint _x) public pure returns(string memory){
        string memory val;
        val = _x>100? "greater than 100" : "equal or smaller";

        return val;
    }
}