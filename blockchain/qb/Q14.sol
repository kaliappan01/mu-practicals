pragma solidity ^0.5.0;

contract Swapper{
    uint a;
    uint b;
    constructor(uint _a, uint _b) public {
        a = _a;
        b= _b;
    }
    function getA() public view returns (uint){
        return a;
    }
    function getB() public view returns (uint){
        return b;
    }
    function swapAB() public {
        a = a^b;
        b = a^b;
        a = a^b;
    }
}
