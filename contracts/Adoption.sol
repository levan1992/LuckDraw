pragma solidity ^0.4.17;//告诉编译器使用大于0.4.17小于0.5版本的solidity语言
contract Adoption {
    address[16] public adopters;    
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
      require(petId >= 0 && petId <= 15);    
      adopters[petId] = msg.sender;    
      return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16]) {
      return adopters;
    }
}