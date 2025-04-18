// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SocialToken is ERC20, Ownable {
    constructor() ERC20("LUKS", "LUKS") {
        uint256 totalSupply = 1_000_000 * 10 ** decimals();

        _mint(0xa5997b7266cF6995fCF6D5b41728eE4dFdFD84C3, (totalSupply * 50) / 100); // Recompensas
        _mint(0x845f224A497Af1F11d7Ac46c4802144754C09BF2, (totalSupply * 30) / 100); // Reserva
        _mint(0x9a4c7419F038C40fce934338092F2bF895174901, (totalSupply * 20) / 100); // Equipo
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}