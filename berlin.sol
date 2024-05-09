// SPDX-License-Identifier: UNLISENCED

pragma solidity ^0.8.0;
contract BalanceTransfer {
    address owner;
    constructor() payable {
        owner = msg.sender;
    }
    function transfer(address payable _to, uint256 _amount) public {
        require(msg.sender == owner, "Ony contract owner can transfer balance");
        require(address(this).balance >= _amount, "Insufficient balance incontract");
        _to.transfer(_amount);
    }
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
