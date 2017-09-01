pragma solidity ^0.4.0;
contract Owned {
  address public owner;

    modifier only_owner() {
        if (msg.sender == owner) {
            _;
        }
    }
   event OwnerChanged(address oldOwner,address newOwner);

    function Owned() {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) external only_owner {
        address oldOwner = owner;
        owner = _newOwner;
        OwnerChanged(oldOwner,_newOwner);
    }
}
