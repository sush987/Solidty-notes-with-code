// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//solidity has 6 in-built crytographic hash functions
//1.keccak256--input : bytes and output: hash32 bytes
//2.sha256 -- input:bytes and output: hash 32 bytes
//3.ribemd160 -- input:bytes and output: hash20
//used in contract signing, uniqueID  and to avoid fraud

//we convert our data into bytes by using abi.encode and/or abi.encodePackage
//there won't be any limit to the bytes we can give as input to the hash functions

contract hashfun{

    function hashkeccak256(uint _x , string memory name, address _add) public pure returns(bytes32){
           return keccak256(abi.encodePacked(_x, name, _add));
    }

    function hashksha256(uint _x , string memory name, address _add) public pure returns(bytes32){
           return sha256(abi.encodePacked(_x, name, _add));
             
    }

    function hashkripemd160256(uint _x , string memory name, address _add) public pure returns(bytes20){
           return ripemd160(abi.encodePacked(_x, name, _add));
             
    }

}




