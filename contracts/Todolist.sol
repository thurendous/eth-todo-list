pragma solidity ^0.5.0;

contract Todolist {
    // state varible is written into the blockchain. It represents the state of the smart contract on the blockchain.
    // we use public then solidity gives us a function to read the varible.
    uint256 public taskCount = 0;

    struct Task {
        uint256 id; // uint: unsigned integer
        string content;
        bool completed;
    }
    // put it in the storage of the blockchain.
    mapping(uint256 => Task) public tasks; // store a key-value pair -> like a database for us on chain.

    // access the contract for the first time we have a data inside. This is the reason of constructor function.
    constructor() public {
        createTask("Check out aave.com");
    }

    // create a function to write the "Task" strct into the mapping
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
