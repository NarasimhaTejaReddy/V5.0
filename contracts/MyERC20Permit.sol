// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

// This is the main contract that inherits from ERC20Permit.
contract MyERC20Permit is ERC20Permit {

    

    // This is the constructor function that initializes the contract with a given name, symbol, and initial supply.
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) ERC20Permit(name) {
        _mint(msg.sender, initialSupply);
    }
}