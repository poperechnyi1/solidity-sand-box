pragma solidity ^0.4.0;

contract HellowWorldContract {
    string word = "Hello World";

    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) constant returns(string){
        word = newWord;
        return word;
    }
}


