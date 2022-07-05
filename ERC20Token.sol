// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

// creating a standard ERC20 token contract

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    address public admin;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    string public name = "Lady";
    string public symbol = "LDY";
    uint8 public decimals = 18;
    
    constructor(uint256 initialSupply) ERC20("Lady", "LDY") {
        _mint(msg.sender, initialSupply);
        admin = msg.sender; 
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}