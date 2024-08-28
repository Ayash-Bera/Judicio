// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecisionTransparency {
    struct Judgment {
        string decisionHash;
        uint256 timestamp;
    }

    mapping(string => Judgment) public judgmentRecords;

    function recordJudgment(string memory caseId, string memory decisionHash) public {
        require(bytes(decisionHash).length > 0, "Invalid decision hash.");
        judgmentRecords[caseId] = Judgment(decisionHash, block.timestamp);
    }

    function getJudgment(string memory caseId) public view returns (string memory, uint256) {
        Judgment memory judgment = judgmentRecords[caseId];
        return (judgment.decisionHash, judgment.timestamp);
    }
}
