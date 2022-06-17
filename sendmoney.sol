// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract sendMoneyexample {

    uint public balancerecieved;

//a function is "payable" when we are sending money to the contract not get money out
    function recievemoeny() public payable{
           balancerecieved += msg.value;

    }
    function getBalance() public view returns(uint){
        return address(this).balance;

    }
    function withdrawMoney() public{
        address to ;
       payable(to).transfer(this.getBalance());
    }

    // function withdrawMoneyto(address payable _to) public{
    //     _to.transfer(this.)
    // }

}