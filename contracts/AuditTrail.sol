// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AuditTrail {
    struct AuditRecord {
        string actionHash;
        address performedBy;
        uint256 timestamp;
    }

    AuditRecord[] public auditRecords;

    function recordAction(string memory actionHash) public {
        auditRecords.push(AuditRecord(actionHash, msg.sender, block.timestamp));
    }

    function getAuditRecord(uint256 index) public view returns (string memory, address, uint256) {
        require(index < auditRecords.length, "Index out of bounds.");
        AuditRecord memory record = auditRecords[index];
        return (record.actionHash, record.performedBy, record.timestamp);
    }
}
