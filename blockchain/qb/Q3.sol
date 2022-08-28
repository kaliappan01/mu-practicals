pragma solidity ^0.5.0;

contract CandyShop{
    mapping(string=>uint) candyList;
    function addCandies(string memory _candy, uint rate) public {
        candyList[_candy] = rate;
    }
    function getCandyCost(string memory _candy) public view returns(uint){
        return candyList[_candy];
    }
}
