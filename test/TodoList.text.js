// create a test to see if the contract was initiated propoerly and listed out correctly
const Todolist = artifacts.require("./Todolist.sol");

contract("Todolist", (accounts) => {
  before(async () => {
    // before each test runs we gonna have a copy of the todolist in the blockchain
    this.todoList = await Todolist.deployed();
  });

  it("deployed successfully", async () => {
    const address = await this.todoList.address;
    assert.notEqual(address, 0x0);
    assert.notEqual(address, "");
    assert.notEqual(address, null);
    assert.notEqual(address, undefined);
  });

  it("lists tasks", async () => {
    const taskCount = await this.todoList.taskCount();
    const task = await this.todoList.tasks(taskCount);
    assert.equal(task.id.toNumber(), taskCount.toNumber());
  });
});
