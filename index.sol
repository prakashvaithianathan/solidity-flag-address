//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;

contract CheckFlag {
    //uint does not use negative values.
    uint256 num;

    //This mapping is used to store address that would be mapped to unsigned integer.
    mapping(uint256 => address) public flagDetails;

    //This contructor function is used to declare 0 as num variable.
    constructor() {
        num = 0;
    }

    //This function is used to set the flag/address using message sender method.
    function setFlagAsParams() public returns (address) {
        num++;
        flagDetails[num] = msg.sender;
        return flagDetails[num];
    }

    //This function is used to set the flag/address using passing params into the function.
    function setFlagAsParams(address flagAddress) public returns (address) {
        num++;
        flagDetails[num] = flagAddress;
        return flagDetails[num];
    }

    //This function is used to get last flag data that would be stored in flagDetails.
    function getLastFlag() public view returns (address) {
        return flagDetails[num];
    }
}
