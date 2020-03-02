var ApprovalContract1 = artifacts.require("ApprovalContract");

module.exports = function(deployer) {
  deployer.deploy(ApprovalContract1);
}
