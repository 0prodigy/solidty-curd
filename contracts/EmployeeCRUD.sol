// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract EmployeeCRUD {
    uint256 totalEmployees;

    constructor() {
        totalEmployees = 0;
    }

    struct Employee {
        address employeeAddress;
        string name;
        string email;
        uint256 age;
    }

    Employee[] public employees;

    function create(
        address _employeeAddress,
        string memory _name,
        string memory _email,
        uint256 _age
    ) public returns (uint256) {
        employees.push(Employee(_employeeAddress, _name, _email, _age));
        totalEmployees++;
        return totalEmployees;
    }

    function deleteEmployee(uint256 _index) public returns (uint256) {
        delete employees[_index];
        totalEmployees--;
        return totalEmployees;
    }

    function updateEmployee(
        address _employeeAddress,
        string memory _name,
        string memory _email,
        uint256 _age
    ) public returns (bool) {
        for (uint256 i = 0; i < employees.length; i++) {
            if (employees[i].employeeAddress == _employeeAddress) {
                employees[i].name = _name;
                employees[i].email = _email;
                employees[i].age = _age;
            }
        }
        return false;
    }

    function getEmployee(uint256 _index) public view returns (Employee memory) {
        return (employees[_index]);
    }
}
