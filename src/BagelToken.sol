// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract BagelToken is ERC20, Ownable{
    constructor() ERC20("Bagel","BGL") Ownable(msg.sender){}

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }
}
