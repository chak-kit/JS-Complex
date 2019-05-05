// try {
//     let calculator = require('./calc');
//     console.log(calculator.addFun(3,4))
// }
// catch (e) {
//     console.log(e.message);
// }
let number = require('./calc');
let res1 = number.randomFun();
let res2 = number.randomFun();
let res3 = number.randomFun();

let arrayUtil = require('./invoce');
let compare = require('./compare');
let printArray = arrayUtil.print([res1, res2, res3, res2, res1, res3]);
console.log(printArray);
let sortedNumbers = printArray.sort(compare.compareNumeric);
console.log(sortedNumbers);