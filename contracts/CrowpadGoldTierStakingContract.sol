// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CrowpadBaseTierStakingContract.sol";

contract CrowpadGoldTierStakingContract is CrowpadBaseTierStakingContract {

    uint8 public tierId = 3;
    uint8 public multiplier = 50; // in 1000
    uint8 public emergencyWithdrawlFee = 50;
    uint8 public enableEmergencyWithdrawl = 0;
    uint8 public enableRewards = 1;
    uint256 public unlockDuration = 24 * 30 * 24 * 60 * 60; // 24 months

    constructor(
        address _depositor,
        address _tokenAddress,
        address _feeAddress
    ) CrowpadBaseTierStakingContract(
        tierId,
        multiplier,
        emergencyWithdrawlFee,
        enableEmergencyWithdrawl,
        unlockDuration,
        enableRewards,
        _depositor,
        _tokenAddress,
        _feeAddress
    ) {
        //
    }
}