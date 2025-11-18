// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMarketplacetkj is ERC721, Ownable {
    uint public tokenCount;

    constructor() ERC721("MarketplaceNFT", "MNFT") {}

    function mint(address to) public onlyOwner returns (uint) {
        uint tokenId = ++tokenCount;
        _mint(to, tokenId);
        return tokenId;
    }
}