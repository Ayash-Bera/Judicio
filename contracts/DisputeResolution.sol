// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DisputeResolution {
    struct Dispute {
        string detailsHash;
        string resolutionHash;
        uint256 timestamp;
        bool resolved;
    }

    mapping(string => Dispute) public disputes;

    function fileDispute(string memory disputeId, string memory detailsHash) public {
        require(bytes(detailsHash).length > 0, "Invalid details hash.");
        disputes[disputeId] = Dispute(detailsHash, "", block.timestamp, false);
    }

    function resolveDispute(string memory disputeId, string memory resolutionHash) public {
        Dispute storage dispute = disputes[disputeId];
        require(!dispute.resolved, "Dispute already resolved.");
        dispute.resolutionHash = resolutionHash;
        dispute.resolved = true;
    }

    function getDispute(string memory disputeId) public view returns (string memory, string memory, uint256, bool) {
        Dispute memory dispute = disputes[disputeId];
        return (dispute.detailsHash, dispute.resolutionHash, dispute.timestamp, dispute.resolved);
    }
}
