// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string private text; // private string variable 'text' is declared to hold the current value

    constructor() {
        text = initialText(); //constructor initializes the 'text' variable with the value returned by the 'initialText()' function, witch is 'Hello World"
    }
    
    function helloWorld() public view returns (string memory) {
        return text; //This function allows anyone to read the current value of text
    }

    function setText(string calldata newText) public {
        text = newText; //this function allows users to update the 'text' variable with a new string
    }

    function initialText() public pure returns (string memory) {
        return "Hello World"; // this function returns the original text "Hello World"
    }

    function _isUnchanged() internal view returns (bool) {
        return keccak256(bytes(text)) == keccak256(bytes(initialText())); // this internal function checks if the current 'text' is still the initial value by comparing their hash values
    }

    function textHasChanged() public view returns (bool returnValue_) {
        returnValue_ = !_isUnchanged(); //This function returns true if the text has changed
    }

    function _restore() internal {
        text = initialText(); //This internal function resets the text variable back to its original value 
by calling the initialText() function. It is used to encapsulate the logic for restoring the text.
    }
    
    function restore() public returns (bool) {
        if (_isUnchanged()) return false; / If text has not changed, return false
        _restore(); // Otherwise, restore to initial text
        return true; //Return true indicating restoration was successful
    }
}
