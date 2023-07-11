// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SDLC_TOKEN is ERC20, Ownable {
    constructor() ERC20("BloodMoney", "BM") {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }

    function mintToken(uint256 _amount) external onlyOwner {
        _mint(msg.sender, _amount);
    }
}
