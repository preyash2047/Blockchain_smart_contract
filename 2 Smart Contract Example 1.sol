pragma solidity 0.6.3;

contract SimpleNumberStorage {
////this are teh typsss of data type
/// uint256 / int256
/// uint
/// uint8 : 0 => 2^8 - 1
/// int8 : -2^7 => 2^7 - 1
    
    
    uint256 populationGTU;
    //// this public keyword will create one button to view it;s value
    ////and this return keyword will return uint256
    function readNumber() public view returns(uint256) {
        return populationGTU;
    }
    ////this will set the value 
    function setNumber(uint256 _newNumber) public {
        populationGTU = _newNumber;
    }
}

///before deploying new contract makesure you delete teh previous deployed contracts

////environment javaScriptVM is for local testying and injacceted web3 is for live deploymnet as we have seen in earlier video while creating the 
////////coin contract