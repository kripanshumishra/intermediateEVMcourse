// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mod1 {
    uint public Percent;

    function ExamResult(uint _percent) external {
        Percent = _percent;

        // Using the require statement to check that the percentage can't be negative.
        require(_percent >= 0 , "The percentage can not be less than zero");

        // minimum percentage should be 33 
        assert(_percent >= 33 );

        // Using the revert statement to check if the percentage is not greater than 100 .
        if (_percent > 100) {
            revert("Percentage can't be greater than 100 ");
        }
    }
}
