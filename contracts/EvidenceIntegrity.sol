// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvidenceIntegrity {
    struct Evidence {
        string evidenceHash;
        uint256 timestamp;
    }

    mapping(string => Evidence) public evidenceRecords;

    function submitEvidence(string memory caseId, string memory evidenceHash) public {
        require(bytes(evidenceHash).length > 0, "Invalid evidence hash.");
        evidenceRecords[caseId] = Evidence(evidenceHash, block.timestamp);
    }

    function verifyEvidence(string memory caseId) public view returns (string memory, uint256) {
        Evidence memory evidence = evidenceRecords[caseId];
        return (evidence.evidenceHash, evidence.timestamp);
    }
}
