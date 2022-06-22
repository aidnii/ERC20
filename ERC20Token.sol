// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// creating an ERC20 token contract

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ERC20Token is ERC20 {
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    string public name = "Lady";
    string public symbol = "LDY";
    uint8 public decimals = 18;
    
    constructor(uint256 initialSupply) ERC20("Lady", "LDY") {
        _mint(msg.sender, initialSupply);
    }
}