pragma solidity ^0.8.18;

contract HelloWorldContract {
    string word = "Hello Stepan Poperechnyi";
    string thisIsCreator = "This is the creator!";
    address issuer;
    
    constructor(){
        issuer = msg.sender;
    }
    
    modifier ifIssuer() { 
        require(issuer == msg.sender);
        _;
    }
    
    
    function getWord() public view returns(string memory){
        return word;
    }
    
    function setWord(string memory newWord) external ifIssuer returns(string memory){
            word = newWord;
            return thisIsCreator;
    }
}