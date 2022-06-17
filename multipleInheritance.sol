// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract A{
     uint public a;
     constructor(){
         a= 100;
     }
     function funA() public {
         a =10;
     }
     function fun() public pure virtual returns(string memory){
         return "Hi I'm in A";
     }
}

contract B is A{
     uint public b;
     constructor(){
         b= 101;
         a = 50;
     }
     function funB() public {
         b =11;
     }

     function fun() public pure virtual override(A) returns(string memory){
         return "Hi I'm in B";
     }
}
//here order of inheritance is important..we cannot write "B,A" here
//the linearization should be from least derived to most-derived contract...A is least derived since it doesn't have a parent
//while B has one parent contract. 



contract C is A,B{
    uint public c;
 function funC() public {
   c=12;
 }
 constructor(){
     c = 102;
 }
 function fun() public pure virtual  override(A,B) returns(string memory){
         return "Hi I'm in C";
     }

}


//contract will inherit properties in the order of "Right-left" & "Depth-first" manner

//overiding can be done using "virtual" and "override" keywords

contract D is A,B,C{
    uint public d;
    constructor(){
        d = 103;
    }
    function funD() public{
        d = 13;
    }
    function fun() public pure override(A,B,C) returns(string memory){
        return "hi I'm in D";
    }
}

//passing parameter to parent constructor in multiple inheritance and order of execution of the parent constructor
contract E{
    string public name;
    uint public age;

    constructor(string memory _name, uint _age){
         name = _name;
         age = _age;
    }
}
contract F{
    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary){
        add = _add;
        salary = _salary;
    }
}

contract G is E("Sushma",21),F("Delhi",100000000000){

}