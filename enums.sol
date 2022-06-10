// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract enumconcept{
    enum Status{
        //default status of the enum is Pending.
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel

    } 
    Status public stat;//this one will automatically have a get function
    Status stat2;//this doesn't have a get function
     function getStatus() public view returns(Status){
        return stat2;
    }

    function setStatus(Status _stat) public{
     stat2 = _stat;
    }

    function setStatasreject() public {
        stat2 = Status.Rejected;

    }


}