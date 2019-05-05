class arrayUtil {
    constructor(){
    }
    print(arr){
        console.log(arr)
    }
}
let util = new arrayUtil();
module.exports = util;


let obj ={
    name:'Vova',
    age: 20
};

let {name: name2, age}= obj;
let name = 'Igor';
console.log(name);
console.log(name2);
console.log(age);


let arr = [1,5,'hello', true, 10,6];
// let [first, second, ...thi] = arr;
// console.log(first);
let [,,,,thi]=arr;
console.log(thi);