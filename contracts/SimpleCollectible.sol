// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Author: Dhruval Patel

contract SimpleCollectible is ERC721 {
    uint256 public tokenCounter;

    constructor () public ERC721 ("Sad Kitty", "CAT") {
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI) public returns (uint256) {
        uint256 newTokenId = tokenCounter;
        // this _safeMint function is inherited from openzeppelin ERC721
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        tokenCounter += 1;
        return newTokenId;
    }
}