// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract structure{
    struct employee{
        string name;
        uint age;
        address address_of_emp;   
    }
  
  employee public emp;//declaring a variable using struct reference
  constructor(string memory _name, uint _age, address _address_of_emp){
      emp.name = _name;
      emp.age = _age;
      emp.address_of_emp = _address_of_emp;
  }
  employee[] public emps;//array of employees
  //ways of initialization:
  function setValues() public {
      //we need to specify if the struct is stored in memeory or storage only when we use struct inside fucntions
      employee memory emp1 = employee("gauruv",21,msg.sender);
      employee memory emp2 = employee({name:"Sushma",age:21,address_of_emp:msg.sender});
      employee memory emp3;
      emp3.name = "Aman";
      emp3.age = 23;
      //pushing these struct variables into the array of structs
      emps.push(emp1);
      emps.push(emp2);
      emps.push(employee("ritik",8,msg.sender));
      


      //updation using another struct referencing
      employee storage emp_tempoo = emp;//references address of the struct of emp to emp_tempoo
      emp_tempoo.name="harsh"; //this changes the name of emp initialzed by the constructor to "harsh"



    //deletion
    delete emp_tempoo.address_of_emp;
    delete emps[2];


  }
///employee public emp_temp = emp;
//emp_temp.name = "harsh";
  


}