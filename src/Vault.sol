// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Vault {
    mapping(address => uint256) wethHoldings;
    mapping(address => uint256) loan;

    address public immutable owner;
    address immutable dai;
    address immutable weth;

    constructor(address wethAddress, address daiAddress) {
        owner = msg.sender;
        dai = daiAddress;
        weth = wethAddress;
    }

    function deposit(uint256 wethAmount) public {
        wethHoldings[msg.sender] = wethAmount;
    }

    function borrow(uint256 daiAmount) public {}

    function repay(uint256 daiAmount) public {}

    function withdraw(uint256 wethAmount) public {}

    function liquidate(address user) public {
        address caller = msg.sender;
        require(caller = owner, "msg sender not owner");
    }
}
