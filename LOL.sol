pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LOL is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LOL(address _owner)  UpgradeableToken(_owner) {
    name = "LOL";
    symbol = "KEK";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}