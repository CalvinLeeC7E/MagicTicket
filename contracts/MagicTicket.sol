// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MagicTicket Base on CashNFT.
 * @dev Interface for any contract that wants to check someone hold ERC20 or value.
 */
interface MagicTicket {
    /**
     * @dev
     * params
     * account, wallet address.
     * tokenAddress, ERC20 contract address, address(0) means ETH/MATIC/BCH...
     * tokenValue, hold min token value.
     * latestMintTime, token mint time must less equal it.
     *
     * returns
     * first, errorCode.
     * second, ticketId(when something went wrong return 0).
     */
    function checkTicket(
        address account,
        address tokenAddress,
        uint256 tokenValue,
        uint256 latestMintTime
    ) external view returns (uint256, uint256);
}
