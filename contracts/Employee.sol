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
}
