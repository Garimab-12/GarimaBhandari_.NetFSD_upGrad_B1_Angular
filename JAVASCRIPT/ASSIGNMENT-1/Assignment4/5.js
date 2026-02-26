let numbers = [10, 20, 30, 10, 40, 20, 50, 60, 60];

let uniqueNumbers = [...new Set(numbers)];

let secondLargest = [...new Set(numbers)]
  .sort((a,b)=>b-a)[1];

let frequency = numbers.reduce((acc,n)=>{
  acc[n]=(acc[n]||0)+1;
  return acc;
},{});

let firstNonRepeating = numbers.find(n=>frequency[n]===1);

let rotatedArray = [...numbers.slice(2),...numbers.slice(0,2)];

let flattened = [1,2,[3,4,[5]]].flat(Infinity);

let arr=[1,2,3,5,6];
let missingNumber = arr.find((n,i)=>n!==i+1);

console.log("Unique:", uniqueNumbers);
console.log("Second Largest:", secondLargest);
console.log("Frequency:", frequency);
console.log("First Non-Repeating:", firstNonRepeating);
console.log("Rotated Array:", rotatedArray);
console.log("Flattened:", flattened);
console.log("Missing Number:", missingNumber);