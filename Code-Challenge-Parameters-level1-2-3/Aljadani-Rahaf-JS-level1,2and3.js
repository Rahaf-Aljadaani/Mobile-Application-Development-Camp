//level 1
function greet(name){
    return "Good day, "+ name;
}
console.log( greet("Rahaf") );

//level 2
function greet(name){
  const d = new Date();
    return ("Good day, "+ name + " - "+ d );
}
console.log( greet("Rahaf") );
window.alert( greet("Rahaf") );


//level 3

function greet(name){
  if (name =="Count Dooku"){
  return "I'm coming for you, Dooku!";
  }
    return "Good day, "+ name;
}
console.log( greet("Count Dooku") );
