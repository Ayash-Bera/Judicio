// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserIdentity {
    struct User {
        string nameHash;
        address userAddress;
        uint256 registeredAt;
    }

    mapping(address => User) public users;

    function registerUser(string memory nameHash) public {
        require(bytes(nameHash).length > 0, "Invalid name hash.");
        users[msg.sender] = User(nameHash, msg.sender, block.timestamp);
    }

    function getUser(address userAddress) public view returns (string memory, uint256) {
        User memory user = users[userAddress];
        return (user.nameHash, user.registeredAt);
    }
}
