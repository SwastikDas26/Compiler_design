// SPDX-License-Identifier: UNLISENCED

pragma solidity ^0.8.0;
contract BalanceTransfer {
    address owner;
    constructor() payable {
        owner = msg.sender;
    }
    function transfer(address payable _to, uint256 _amount) public {
        require(msg.sender == owner, "Ony contract owner can transfer balance");
        require(address(this).balance >= _amount, "Insufficient balance incontract");
        _to.transfer(_amount);
    }
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}


pragma solidity >=0.4.22 <0.9.0;
contract FabCar {
struct Car {
string make; string model; uint256 year; string owner;
mapping (string => Car) cars;
function addCar(string memory _carId, string memory _make, string
memory _model, uint256 _year, string memory _owner) public { Car memory newCar
= Car(_make, _model, _year, _owner): cars[carId] = newCar;
function queryCar(string memory _carId) public view returns (string memory, string
memory, uint256, string memory) {
return (cars[ _carld].make, cars[ carId].model, cars[carld].year,
cars[carld].owner);
function queryCarsByOwner(string memory _owner) public view returns (Car[] memory)
{
uint256 count = 0;
for (uint256 i = 0; i < cars.length; i++) (
if (keccak256(bytes(cars[i].owner)) ==
keccak256(bytes(_owner))) {
count++;
Car[] memory result = new Car[](count); uint256 index = 0;
for (uint256 i = 0; i < cars.length; i++) ( if (keccak256(bytes(cars[i].owner))
== keccak256(bytes(owner))) {
result[index] = cars[i];
index++;
return result;




const Web3 = require('web3');
// Connect to the Ethereum network
const web3 = new
Web3('https://mainnet.infura.io/v3/1234567890abcdef1234567890abcdef'); // Replace with
your Ethereum provider URL
// Define the address and ABI of the deployed smart contract
const contractAddress = “0x1234567890123456789012345678901234567890”;
// Replace with the address of your deployed smart contract
const contractABl = [
{
"constant": false,
"inputs": [
{
"name": "newValue",
"type": "uint256"
}
],
"name": "set",
"outputs": [],
"payable": false,
"stateMutability": "nonpayable",
"type": "function"
},
{
23
"constant": true,
"inputs": [],
"name": "get",
"outputs": [
{
"name": "",
"type": "uint256"
}
],
"payable": false,
"stateMutability": "view",
"type": "function"
}
]; // Replace with the ABI of your smart contract as a JSON object
// Create a contract instance
const contract = new web3.eth.Contract(contractABI, contractAddress);
// Define the function for querying person details from the smart contract
async function getPersonDetails(personld) {
try {
// Call the 'getPerson' function on the smart contract
const result = await contract.methods.getPerson(person1d).call();
// Extract the person details from the returned result
const personDetails = {
id: result[0],
name: result[1],
age: result [2],
gender: result[3]
};
console.log('Person details:',personDetails); } catch (error) {
console.error(Failed to get person details:', error);
24
}
// Call the function to query person details by person ID
const personId = 1; // Replace with the person ID you want to query
getPersonDetails(personld);
output:
Person details: {
id: 1,
name: 'John Doe',
age: 30,
gender: 'Male
}
