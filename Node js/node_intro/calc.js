// function add(a, b) {
//     if (typeof a !=='number' || typeof b !=="number"){
//         throw new  Error ('BAD')
//     }
//     console.log('Sum =');
//     return a+b;
// }
// module.exports.addFun = add;

function getRandom() {
    let num = Math.floor(Math.random()*10);
    return num;
}
module.exports.randomFun = getRandom;

