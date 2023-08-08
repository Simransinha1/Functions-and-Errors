// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling {
    uint public coinbalance = 0;
    uint public quotient = 0;

    function RequireCheck(uint income, uint coins) public payable {
        coinbalance += coins;
        require(income >= 100, "income is less than 50000. Transaction not possible");
    }

    error ThrowError(string);
    function RevertCheck(uint income, uint coins) public payable {
        coinbalance += coins;
        if (income < 50000)
            revert ThrowError("income is less than 50000. Transaction not possible");
    }

    function AssertCheck(uint a, uint b) public {
        assert(b != 0);
        quotient = a / b;
    }
}
