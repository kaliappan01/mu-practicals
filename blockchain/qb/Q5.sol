pragma solidity ^0.5.12;
// contract with fallback function
contract A {
uint n;
function set(uint value) external {
n = value;
}
function() external payable {
n = 0;
}
}
// contract to interact with contract A
contract example {
function callA(A a) public returns (bool) {
// calling a non-existing function
(bool success,) = address(a).call(abi.encodeWithSignature("setter()"));
require(success);
// sending ether to A
address payable payableA = address(uint160(address(a)));
return (payableA.send(2 ether));
}
}
