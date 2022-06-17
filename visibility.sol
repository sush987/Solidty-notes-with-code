// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint private x = 100;//only within contract
    uint internal y = 100;//only within contract and derived contract 
    uint public z = 100;//everywhere

    //uint external a = 222;//not allowed we get error; state variables can't be external

    function check1() private pure returns(string memory){
        return "Private";
    }

    function check2() internal pure returns(string memory){
        return "Internal";
    }
    function check3() external pure returns(string memory){
        return "External";
    }
    function check4() public pure returns(string memory){
        return "Public";
    }

    // function checkall() public view returns(string memory){
    //     return check1();
    // }

}

contract B {
    //uint a = y;
    A obj = new A();
    string  h = obj.check3();

}
contract C is A{
    string public a = check2();
}
