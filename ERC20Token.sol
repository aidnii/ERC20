// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// creating an ERC20 token contract

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ERC20Token is ERC20 {

    constructor(uint256 initialSupply) ERC20("Lady", "LADY") {
        _mint(msg.sender, initialSupply);
    }
}