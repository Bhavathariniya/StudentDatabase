const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("database_stud", (m) => {
  const students= m.contract("database_stud")

  return { students };
});
