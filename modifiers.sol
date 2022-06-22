// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//special type of function like constructor

//helps in code reusability 
contract Auction{

    modifier sameCode(){
        //this is like a constructor for a function...whenever the function is called this gets executed
        for(uint _i = 0; _i<10; _i++){
            //code
        }
        _;//needed to end the modifier code
        //this _; makes the execution to be returned to whichever function calls it
    }



    function fun1() public pure  returns(string memory){
        for(uint _i=0; _i<10; _i++){
           
        }
        return "Hello";
    }
    function fun2() public pure returns(uint ){
         for(uint _i=0; _i<10; _i++){
           
        }
        return 20;
        //_x=20;
    }
    function fun3() public view returns(address){
        for(uint _i=0; _i<10; _i++){
           
        }

        return msg.sender;
    }


    function fun4() public pure sameCode returns(uint){


        return 30;
    }
    constructor(){

    }


}

contract auctionn{
    address public owner = msg.sender;
     modifier onlyOwner(){
      require(owner == msg.sender, "u are not the authorized owner");

      _;
     }

    function startAuction() public view {
        
    }
    function checkStatus() public view{

    }
    
}
//difference between constructor and modifier is that:
//we can have multiple modifiers but only one constructor

