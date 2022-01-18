pragma solidity 0.5.1;   // declaring the solidity version

contract Counter {
    uint public count = 0;

    event Increment(uint value);  // event helps us to understand that that the value of count changed
    event Decrement(uint value);

    // a constructor function can also be created to assign value or do something when the program is executed
    // constructor() public{
    //     count=0;
    // }

    // the view keyword in the next line means that the function gonna return a value
    function getCount() view public returns(uint){
        return count;
    }

    function increment() public {
        count = count + 1;
        emit Increment(count);        
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);  
    }
}
