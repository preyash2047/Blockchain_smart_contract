//this is to declare that we are going to use the solidity version 0.6.3
pragma solidity 0.6.3;

///creating new contract
contract RegistrationWithMoney {

    struct RegEntry {

        string name;

        address userAddress;

        uint256 amount;

    }

    

    RegEntry[] public entries;

    address public financeManager;

    

    constructor() public {

        financeManager = msg.sender;

    }

    
    function newRegistration(string memory _name) public payable {

        require(msg.value >= 0.1 ether, 'not sent enough ether');

        entries.push(

            RegEntry({

                name: _name,

                userAddress: msg.sender,

                amount: msg.value

            })

        );

    }

 

    function getBalance() public view returns (uint256) {

        return address(this).balance;

    }

    

    function withdrawFunds() public {

        payable(financeManager).transfer(getBalance());

    }

}