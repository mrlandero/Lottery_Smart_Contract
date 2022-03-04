//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// Defining the state variables and the constructor
contract Lottery {
    address payable[] public players;
    address public manager;

    constructor(){
        manager = msg.sender;
    }