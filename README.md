# Smart Contract - ETH + AVAX: Functions and Errors

## Overview
This solidity program demonstrates the usage of three important error handling functions: `require()`, `revert()`, and `assert()` within a smart contract. The contract aims to handle age verification for a user before processing a transaction. Additionally, it includes handling the divide by zero error.

## Description
The contract contains three main functions to handle various error scenarios. First, the `RequireCheck()` function verifies the user's age and performs the requested transaction to their account if they have income grater than 50000. Second, the `RevertCheck()` function accomplishes the same task using the `revert()` function to handle errors when the user's income less than 50000. Finally, the `AssertCheck()` function ensures that a division by zero error is avoided by using the `assert()` function.

## Getting Started

### Running the Program
To execute this program, you can use Remix, an online Solidity IDE. To get started, access the Remix website at https://remix.ethereum.org/.

Once you're on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., contract.sol). Then, copy and paste the provided code into the file.


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling {
    uint public coinbalance = 0;
    uint public quotient = 0;

    function RequireCheck(uint income, uint coins) public payable {
        coinbalance += coins;
        require(income >= 50000, "income is less than 50000. Transaction not possible");
    }

    error ThrowError(string);
    function RevertCheck(uint income, uint coins) public payable {
        coinbalance += coins;
        if (income < 50000)
            revert ThrowError("income is less than 100. Transaction not possible");
    }

    function AssertCheck(uint a, uint b) public {
        assert(b != 0);
        quotient = a / b;
    }
}


To compile the code, navigate to the "Solidity Compiler" tab in the left-hand sidebar. Ensure the "Compiler" option is set to "0.8.4" (or a compatible version), and then click on the "Compile contract.sol" button.

After successful compilation, deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contract from the dropdown menu, and then click on the "Deploy" button.

Now, you can provide your income, the amount of tokens you want, and two integers for the division operation. Proceed to call each function `RequireCheck()`, `RevertCheck()`, and `AssertCheck()` with the required inputs and press transact.

## Author
Simran Sinha
Email: 21BCS3832@cuchd.in

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
