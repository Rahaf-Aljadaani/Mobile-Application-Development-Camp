// 1- 

function myBirthYearFunc(){
    console.log("I was born in" + 1980);
}
//will print I was born in 1980 ,, when the function calls.

// 2-

function myBirthYearFunc(birthYearInput){
    console.log("I was born in" + birthYearInput);
}
//will print I was born in 1980 ,or what birthYearInput i send 
//, when the function calls.


// 3-If var num1 = 10 and var num2 = 20, what would the console.log state?

function add(num1, num2){
    console.log("Summing Numbers!");
    console.log("num1 is: " + num1);
    console.log("num2 is: " + num2);
    var sum = num1 + num2;
    console.log(sum);
}

// OUTPUT :
// Summing Numbers!
// num1 is: 10
// num2 is: 20 
// 30