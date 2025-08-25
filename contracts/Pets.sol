// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Pets {
    struct Pet {
        string name;
        string kind;
        int age;
        bool isActive;
    }

    // Contract data
    mapping(uint256 => Pet) private pets;
    mapping(uint256 => bool) private existingPets;

    // Validation 
    modifier petExists(uint256 chipId) {
        require(existingPets[chipId], "Pet does not exist");
        _;
    }

    modifier petDoesNotExist(uint256 chipId) {
        require(!existingPets[chipId], "Pet already exists");
        _;
    }

    modifier validAge(uint16 age) {
        require(age >= 0, "Invalid age");
        _;
    }

    /// Add a new pet to this contract
    function add(uint256 chipId, string memory name, string memory kind, uint16 age) petDoesNotExist(chipId) validAge(age) public {

    }

    /// Update the name of a pet in this contract
    function updateName(uint256 chipId, string memory newName) petExists(chipId) public {

    }

    /// Increment the age of a pet by 1 year
    function incrementAge(uint256 chipId) petExists(chipId) public {

    }

    /// Set a pet's status to "Inactive" 
    function softDelete(uint256 chipId) petExists(chipId) public {

    }

    /// Retrieve a pet by its chip ID
    function get(uint256 chipId) petExists(chipId) public view returns (Pet memory) {

    }
}