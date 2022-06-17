// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//events store data on the blockchain with very less fee

contract eventt{
    //we want to display a senetnce on the blockchain data like "address has value 233"
    event balance(address account ,string message,uint val);
//simple functions never return anything
    function setData(uint _value) public {
        //emit saves the event formatted data on the blockchain
    emit balance(msg.sender, "has value",_value);
    }
}
//events make Dapps interactive


contract chatApp{
    event chat(address indexed _from, string _message, address _to);
    function sendmessage(address to, string memory message) public {
        emit chat(msg.sender, message, to);
    }
}

//indexing is useful in searching all the events 