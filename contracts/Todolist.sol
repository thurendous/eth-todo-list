pragma solidity ^0.5.0;

contract Todolist {
    // state varible is written into the blockchain. It represents the state of the smart contract on the blockchain.
    // we use public then solidity gives us a function to read the varible.
    uint256 public taskCount = 0;
}
