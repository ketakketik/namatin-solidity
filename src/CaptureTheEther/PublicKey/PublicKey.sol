// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract PublicKeyChallenge {
    address owner = 0x92b28647Ae1F3264661f72fb2eB9625A89D88A31;
    bool public isComplete;

    function authenticate(bytes memory publicKey) public {
        require(address(bytes20(keccak256(publicKey))) == owner);

        isComplete = true;
    }
}
