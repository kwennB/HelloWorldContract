// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract HelloWorld {
    string public firstProgram;
    string public greetings = "Hello World";

    constructor (string memory helloWorld){
        firstProgram = helloWorld;
    }

    function createGreetings (string memory newGreetings) public{
        firstProgram = newGreetings;
    }

    function callGreetings() public view returns (string memory){
        return string(abi.encodePacked(greetings, firstProgram));
    } 
} 