// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//send function can send ether to a smart contract or to a particular address and it returns a bool value--T for success in transaction and F for fail
//send function has a gas limit of 2300 gas, if the limit is crossed all the gas gets over
//send function is often used with require because require helps revert back the changes in any state variable and also checks for gas limit



//transfer function doesn't return anything and also has a limit of 2300 gas
//it automatically reverts the gas value and state variable changes without using require


//Call returns a bool value and some data in byte
//gas limit is set by us and used along with require


contract sendeth{
  address payable public getter = payable(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);
  receive() external payable{}

  function checkbal() public view returns(uint){
      return address(this).balance;
  }

  function Sendd() public {
      bool sent = getter.send(22);
      require(sent,"Transaction not successful");

  }


} 

contract transferrr{
    address payable public getter = payable(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);
  receive() external payable{}

  function checkbal() public view returns(uint){
      return address(this).balance;
  }

  function transferr() public{
      getter.transfer(2220000000000000000);


  }
}

contract Calll{
 address payable public getter = payable(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);
  receive() external payable{}

  function checkbal() public view returns(uint){
      return address(this).balance;
  }

  function call() public{
      (bool sent, bytes memory data) = getter.call{value: 5220000000000000000, gas:9220000000000000000}("");
       
       require(sent,"transaction failed");
       data = "123abc";        
  
  }

}
//we can also use a dynamic getter function where getter is given whenever we run the smart contract 
//for this we just need to add the parameter of address getter in every function/or in the constructor of each 
//it will look like this "function calll(address payable _getter){ getter = _getter;}