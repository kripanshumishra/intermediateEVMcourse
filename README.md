# Exam Result Smart Contract (Mod1)

## Overview
This Solidity smart contract, named Mod1, is designed to manage and store exam result percentages. It includes checks to ensure the validity of the provided percentage.

## Features
1. **Percent Variable:** The contract includes a public state variable named `Percent` of type `uint` to store exam result percentages.

2. **ExamResult Function:** The contract provides a function called `ExamResult` that allows external entities to set the exam result percentage.

3. **Validation Checks:**
   - The contract uses a `require` statement to ensure that the provided percentage is not negative. If it is, the transaction will revert with the error message "The percentage can not be less than zero."
   
   - An `assert` statement checks that the provided percentage is equal to or greater than 33. If it is not, an assertion failure will revert the transaction.
   
   - The contract includes a conditional check with the `revert` statement to ensure that the percentage is not greater than 100. If the condition is met, the transaction reverts with the error message "Percentage can't be greater than 100."
