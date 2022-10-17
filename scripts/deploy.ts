import { ethers } from "hardhat";

async function main() {


  const Employee = await ethers.getContractFactory("EmployeeCRUD");
  const employee = await Employee.deploy();

  await employee.deployed();

  console.log(`deployed to ${employee.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
