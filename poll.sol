// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract PollDapp {


    string public question;
    string[] options;

    mapping (uint => uint) voteCount;
    mapping (address => uint) castedVotes;
    
    constructor (string memory _question, string[] memory _options) {
        question = _question;
        options = _options;
    }

    function getOptions() public view returns (string[] memory) {
        return options; 
 }
 
function castVote (uint _optionIndex) public returns (string memory) {

    address _caller = msg.sender;
    

     uint existingNumberOfVotes = voteCount[_optionIndex];
     uint updatedNumberOfVotes = existingNumberOfVotes + 1;

     uint existingVotesByCaller = castedVotes[_caller];

     require(existingVotesByCaller == 0, "No way, dude: You can only vote once");

     uint updatedVotesByCaller = existingVotesByCaller +1;

     voteCount[_optionIndex] = updatedNumberOfVotes;
     castedVotes[_caller] = updatedNumberOfVotes;


     return "cryptoCialone really is the best!!!";
 }
    }

