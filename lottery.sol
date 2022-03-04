//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// Defining the state variables and the constructor
contract Lottery {
    address payable[] public players;
    address public manager;

    constructor(){
        manager = msg.sender;
    }

    // Entering the lottery
    receive() external payable {  // In order for the contract to receive ETH - Must be included in contract
        // Validation - The require statement
        require(msg.value == 0.1 ether, "You can only send .1 ETH!"); // We can assign a suffix for the unit we are using (ether)
        players.push(payable(msg.sender));  // Adding the player to the Players array
    }

    function getBalance() public view returns(uint){ // To access the balance of the contract
        // Only the manager of the contract can see the balance of the contract
        require(msg.sender == manager, "You are not authorized to view the balance of this contract!");
        return address(this).balance;
    }

    // Generate a random number in solidity in order to select the lottery winner
    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players.length)));
    }