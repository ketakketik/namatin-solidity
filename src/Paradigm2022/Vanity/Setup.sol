// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.6;

import "./VanityChallenge.sol";

contract Setup {
    Challenge public immutable challenge;

    constructor() {
        challenge = new Challenge();
    }

    function isSolved() external view returns (bool) {
        return challenge.bestScore() >= 16;
    }
}
