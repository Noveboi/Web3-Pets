// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Pets {
    struct Pet {
        uint256 chipId;
        string name;
        string kind;
        int age;
        bool isActive;
    }
    
    /// Add a new pet to this contract
    function add(uint256 chipId, string memory name, string memory kind, int age) public {

    }

    /// Update the name of a pet in this contract
    function updateName(uint256 chipId) public {

    }

    /// Increment the age of a pet by 1 year
    function incrementAge(uint256 chipId) public {

    }

    /// Set a pet's status to "Inactive" 
    function softDelete(uint256 chipId) public {

    }

    /// Retrieve a pet by its chip ID
    function get(uint256 chipId) public view returns (Pet memory) {

    }
}