pragma solidity ^0.5.0;
contract SolidityTest {
   uint state; // State variable
   constructor() public {
      state = 10;   
   }
   function getResult(uint a) public view returns(uint){
      return state*a; 
   }
}
