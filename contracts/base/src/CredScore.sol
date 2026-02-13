// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title CredScore Contract
/// @notice Decentralized credit scoring oracle adapter.
contract CredScore {

    mapping(address => uint256) public creditScores;
    address public oracle;
    
    constructor() {
        oracle = msg.sender;
    }
    
    function updateScore(address _user, uint256 _score) external {
        require(msg.sender == oracle, "Only oracle");
        creditScores[_user] = _score;
    }
    
    function getScore(address _user) external view returns (uint256) {
        return creditScores[_user];
    }

}
