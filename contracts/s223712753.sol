// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Finance {

    uint256 public balance = 0;
    uint256 public studentID = 223712753;
    string public ownerName;
    string public authorName = "Akshat Soni";

    function setOwnerName(string memory _ownerName) public {
        ownerName = _ownerName;
    }

    function credit(uint256 amount) public {
        balance += amount;
    }

    function debit(uint256 amount) public {
        balance -= amount;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }

    function getOwnerName() public view returns (string memory) {
        return (ownerName);
    }

    function getAuthorInfo() public view returns (uint256, string memory) {
        return (studentID, authorName);
    }
}