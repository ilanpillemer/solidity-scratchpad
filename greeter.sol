pragma solidity ^0.4.0;
import "./Owned.sol";

contract Greeter is Owned{

string greeting;
int no_of_greetings;

string[] public greetings;

function Greeter() {
    no_of_greetings = 0;
    greeting = "Hello Workshop";
    greetings.push(greeting);
 }

function greet() constant returns (string){
    return greeting;
}

function no_greetings() constant returns (int){
    return no_of_greetings;
}


function changeGreeting(string _newGreeting) only_owner{
    no_of_greetings = no_of_greetings + 1;
    greeting = _newGreeting;
    greetings.push(greeting);
}

}
