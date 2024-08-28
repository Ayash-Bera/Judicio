const EvidenceIntegrity = artifacts.require("EvidenceIntegrity");
const DecisionTransparency = artifacts.require("DecisionTransparency");
const LegalAgreement = artifacts.require("LegalAgreement");
const UserIdentity = artifacts.require("UserIdentity");
const DisputeResolution = artifacts.require("DisputeResolution");
const AuditTrail = artifacts.require("AuditTrail");

module.exports = function (deployer) {
  deployer.deploy(EvidenceIntegrity);
  deployer.deploy(DecisionTransparency);
  deployer.deploy(LegalAgreement);
  deployer.deploy(UserIdentity);
  deployer.deploy(DisputeResolution);
  deployer.deploy(AuditTrail);
};
