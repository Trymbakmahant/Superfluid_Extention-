// initializing the CFA Library
pragma solidity ^0.8.14;

import { 
    ISuperfluid 
} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperfluid.sol";

import { 
    ISuperToken 
} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperToken.sol";

import {
    SuperTokenV1Library
} from "@superfluid-finance/ethereum-contracts/contracts/apps/SuperTokenV1Library.sol";

contract SomeContractWithSuperTokenV1Library {

    using SuperTokenV1Library for ISuperToken;
    ISuperToken public token;
    address public constant _token = 0x5D8B4C2554aeB7e86F387B4d6c00Ac33499Ed01f ; 
    
    constructor() {
        token = ISuperToken(_token);
    }


function startFlowSingle( address _receiver, int96 _flowRate) external   {
        token.createFlowFrom(msg.sender, _receiver, _flowRate);
      //  token.createFlow( _receiver,  _flowRate);
        
    }
    //your contract code here...
}