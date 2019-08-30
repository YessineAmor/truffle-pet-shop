pragma solidity ^0.5.0;

contract Adoption {
address[16] public adopters;
function adopt(uint petId) public returns (uint){
    require(petId >= 0 && petId <= 15,"Pet ID needs to be between 0 and 15");

    adopters[petId] = msg.sender;

    return petId;
}
function getAdopters() public view returns (address[16] memory) {
    return adopters;
}
}