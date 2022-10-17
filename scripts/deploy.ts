import { ethers } from "hardhat";

async function main() {


  const Employee = await ethers.getContractFactory("EmployeeCRUD");
  const employee = await Employee.deploy();

  await employee.deployed();

  console.log("Employee deployed to:", employee.address);

  const newEmployee = await employee.create(
    "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
    "Akash",
    "pathakvikash9211@gmail.com",
    23,
  )
  console.log("Added new Employee: -> ", newEmployee);

  const updateEmployee = await employee.updateEmployee(
    "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
    "Akash Pathak",
    "test@gmai.com",
    23,
  )
  console.log("Updated Employee: -> ", updateEmployee);

  const getEmployee = await employee.getEmployee(0);
  console.log("Get Employee: -> ", getEmployee);

  const deleteEmployee = await employee.deleteEmployee(0);
  console.log("Deleted Employee: -> ", deleteEmployee);

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
