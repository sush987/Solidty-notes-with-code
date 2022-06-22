// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*fallback:
it is executed when a non-existent function is called on the contract
it is required to be marked externally
it has no name, no arguments,cannot return, only be defined one per contract
if not marked payable and if contract recieves ether it throws exception
it's main use is to directly send ether to the contract
*/

//recieve is like fallback but it can only recieve ether not data 

contract ff_re{


    fallback() external payable{
//recieves both ether and data     
    }
//if u have both fallback and recieve in a contract the if we send both data and ether both are received by the fallbacjk function
//if only ether is sent when both fallback and recieve exist then receive function receives the ether

    receive() external payable{
//recieves only ether
    }

    function checkbalance() view public returns(uint ){
        //address(this) gives the address of the smart contract
        return address(this).balance;
    }
}

