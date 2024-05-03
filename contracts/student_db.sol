// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract database_stud{

    struct stud_detail {
        string name;
        uint reg_no;
        uint year;
        string department;
        uint age;
        uint phone_num;
    }

    mapping (uint => stud_detail) public Student_db;

    function get_data(string memory _name, uint _reg_no, uint _year, string memory _department, uint _age, uint _phone_num) public{

        Student_db[_reg_no]=stud_detail(_name, _reg_no, _year, _department, _age, _phone_num);

    } 

    function return_data(uint reg) public view returns(stud_detail memory){
        return Student_db[reg];
    }

}

