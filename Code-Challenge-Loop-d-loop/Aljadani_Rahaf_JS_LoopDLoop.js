//piece of candy every time a runner reaches 2 miles on a treadmill 
//but stops giving candy out at mile 6. 

for (var i =0 ; i<6 ; i++){
if(i%2==0){
  console.log("hava a candy ");
}
}


// a new loop where the runner only gets a piece of candy at every 2 miles
//AND if they were going move than 5.5 miles per hour.

for (var i =0 ; i<=5.5 ; i+=0.09166666666){ //5.5 miles per 60 min = 0.09166666666 miles
if(i%2==0){
  console.log("* hava a candy *");
}
}