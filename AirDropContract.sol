pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT
interface ierc20 { 
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract AirDropContract {
    // contract adddress
    address cAddr = 0x3C37ab18d0EC386d06dD68E3470e49bFDC0D46E8;
    address _owner = 0x74Cd43787D10fD7247bCcaB93b2f7803b48c6e4f;
    string website ="DogeMultiverse.sg";
    event Website(string message,string website);
    function setCAddr(address _counter) public {
        require(msg.sender == _owner);
        cAddr = _counter;
    }
    function DogeMultiverseSgAirdrop(uint256 DMwei,string memory message,address[] memory addresses) public {
        require(msg.sender == _owner);
        emit Website(message,website);
        for (uint i=0;i< addresses.length;i++){
            ierc20(cAddr).transfer(addresses[i],DMwei);
        }
    }
}
