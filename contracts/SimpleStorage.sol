// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.17;
contract SimpleStorage {
    uint256  public favoriteNumber;
    
    /* Events */ 
   event storedNumber(
       uint256 indexed oldNumber,
       uint256 indexed newNumber, 
       uint256 addedNumber, 
       address sender
    ); 
    function store(uint256 newFavoriteNumber) public {
        //emitting an event note you might want to do this after updating the variable below but whatever, this is for demo purposes only
        emit storedNumber(
            favoriteNumber,
        newFavoriteNumber,
        favoriteNumber + newFavoriteNumber,
        msg.sender 
        );

        favoriteNumber = newFavoriteNumber;
    }

}


