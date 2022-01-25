// contract which uses conditions
pragma solidity 0.5.1;

contract VotingContract{
    uint public steves_votes;
    uint public davids_votes;
    string steve_leads = 'steve leads';
    string david_leads = 'david leads';
    string draw = 'The lead has been tied';



    function vote_for_steve() public{
        steves_votes = steves_votes + 1;
    }

    function vote_for_david() public{
        davids_votes = davids_votes + 1;
    }

    function find_lead() public view returns(string memory){
        if(steves_votes > davids_votes){
            return steve_leads;
        }
        else if(davids_votes > steves_votes){
            return david_leads;
        }
        else{
            return draw;
        }
    }

}
