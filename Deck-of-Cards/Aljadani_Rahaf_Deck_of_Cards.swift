import Foundation
struct Card {
var Color : String
var Roll : Int = Int.random(in: 1...6) //random 1 - 6

init() {
   Color = "" 
}

}

class Deck {
var cards: [Card] = []
//When initializing the deck make sure that it has 10 cards of each color for a total of 30
init() {
    var x = 0
    var chose1 = 1
    var chose2 = 1
    var chose3 = 1 
    while (x == 1){
    var y = Card()
    if( (y.Roll == 1 || y.Roll == 2) && chose1 <= 10  ){
        y.Color = "Blue"
        chose1 += 1
    cards.append(y) }
    else if( (y.Roll == 3 || y.Roll == 4) && chose2 <= 10  ){
        y.Color = "Red"
         chose2 += 1
    cards.append(y) }
    else if( (y.Roll == 5 || y.Roll == 6) && chose3 <= 10  ){
        y.Color = "Green"
         chose3 += 1
    cards.append(y) }
    else{
    x=0 
    } }
}

func deal () -> Card? { 
     if self.cards.count > 0 {
            let poparrr = self.cards[0]
            self.cards.remove(at: 0)
            return poparrr
        } 
 return nil
}

func isEmpty () -> Bool{
if cards.count < 0{
return true}
else {
return false}
}

func shiffle () {
      var swap_i: Int = 0
        for i in 0..<30 {
            swap_i = Int.random(in: 1...30)
            while (swap_i == i) {
                swap_i = Int.random(in: 1...30) 
            }
            swap(&self.cards[i], &self.cards[swap_i])
        }
}

}

class Player {
var name : String
var hand :[Card]=[]

init (n : String){
self.name = n
}

func draw (x: Deck) -> Card {
    
hand.append(x.deal()!)
return x.deal()!

}

func rollDice () -> Int {
return Int.random(in: 1...6)
}

func matchingCards (c:String,n: Int)-> Int {
    var cont: Int = 0
for i in 0..<hand.count{
    if(hand[i].Color == c && hand[i].Roll == n){
cont += 1
}
}
return cont
}

}

var myDeck = Deck()
myDeck.shiffle()

var myPlayer = Player(n: "Rahaf")
print(myPlayer.name)
myPlayer.draw(x: myDeck)
print(myPlayer.matchingCards(c: "Red", n: 3))

print("Hello World")