// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LegalAgreement {
    struct Agreement {
        string termsHash;
        bool fulfilled;
        uint256 timestamp;
    }

    mapping(string => Agreement) public agreements;

    function createAgreement(string memory agreementId, string memory termsHash) public {
        require(bytes(termsHash).length > 0, "Invalid terms hash.");
        agreements[agreementId] = Agreement(termsHash, false, block.timestamp);
    }

    function fulfillAgreement(string memory agreementId) public {
        Agreement storage agreement = agreements[agreementId];
        require(!agreement.fulfilled, "Agreement already fulfilled.");
        agreement.fulfilled = true;
    }

    function getAgreement(string memory agreementId) public view returns (string memory, bool, uint256) {
        Agreement memory agreement = agreements[agreementId];
        return (agreement.termsHash, agreement.fulfilled, agreement.timestamp);
    }
}
