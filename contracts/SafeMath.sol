pragma solidity ^0.4.8;

contract SafeMath {
  //internals

  function safeMul(uint a, uint b) internal returns (uint) {
    uint c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function safeSub(uint a, uint b) internal returns (uint) {
    assert(b <= a);
    return a - b;
  }

  function safeAdd(uint a, uint b) internal returns (uint) {
    uint c = a + b;
    assert(c>=a && c>=b);
    return c;
  }

  function safeMul(int a, int b) internal returns (int) {
    int c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }  

  function safeAdd(int a, int b) internal returns (int) {
    int c = a + b;
    return c;
  }

  function safeSub(int a, int b) internal returns (int) {
      int c = a - b;
    return c;
  }  

  function assert(bool assertion) internal {
    if (!assertion) throw;
  }
}