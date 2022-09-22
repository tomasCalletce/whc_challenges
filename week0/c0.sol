// SPDX-License-Identifier: MIT
pragma solidity 0.6.0;


contract C1 {

    address public admin;
    address public winner;
    string public winnerMessage;
    uint public startNum;

    constructor(uint _startNum) public {
        admin = msg.sender;
        startNum = _startNum;
    }
   
    function iWillWin(uint _n) external {
        require(winner == address(0));
        uint _auxi = startNum - _n;
        require(_auxi > startNum);
        winner = msg.sender;
    }

    function leaveChampionMessage(string calldata _message) external {
        require(msg.sender != address(0));
        require(msg.sender == winner || msg.sender == admin);
        winnerMessage = _message;
    }

}