pragma solidity ^0.5.16;

contract ApprovalContract {

  // sender = rent
  // receiver = landlord
  address payable public sender;
  address payable public receiver;
  address payable public constant approver = 0x9c34676A0fD5b056317282000Bc15db5104134dD;

  // transfers money from renter to landlord
  function deposit(address payable _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
  }

}
