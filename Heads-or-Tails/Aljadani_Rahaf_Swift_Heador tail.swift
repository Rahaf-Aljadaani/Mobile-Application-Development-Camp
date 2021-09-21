import Foundation

//Create a function tossCoin() ->  String
//Have this function print "Tossing a Coin!"
func tossCoin() ->  String {
    print("Tossing a Coin!")

//Next have the function randomly pick either "Heads" or "Tails"

    var coin : String = ""
    let random  = Int.random(in: 0...1)
    if(random == 0){
        coin = "Heads!"
    }
    else{
    coin = "Tails!"
    }  
//Have the function print the result
    print(coin)
//Finally, have the function return the result
    return (coin)
}


let resalt : String = tossCoin()

//Now create another function tossMultipleCoins(Int) -> Double
func tossMultipleCoins(x : Int) -> Double {
//Have this function call the tossCoin function multiple times based on the Integer input
var arr : [String] = []
for _ in 0..<x {
  arr.append(tossCoin()) 
}
var count :Int = 0;
for i in 0..<x {
    if (arr[i]=="Heads!"){
    count += 1
    }
}
//Have the function return a Double that reflects the ratio of head toss to total toss  
return (Double(count % x)) 
}

print (tossMultipleCoins(x : 5))