pragma solidity 0.4.3;

contract Bank{
    uint public bal = 1;

    // constructor() public{
    //     bal = 1; 
    // }

    // the view keyword in the next line is used because we are getting the value not manupulating it
    function getBalance() public returns(uint){
        return bal;
    }

    function withdraw(uint amount) public{
        bal = bal - amount;
    }

    function deposit(uint amount) public{
        bal = bal + amount;
    }
}
