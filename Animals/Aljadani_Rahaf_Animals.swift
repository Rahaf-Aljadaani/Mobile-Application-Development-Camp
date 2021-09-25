class Animal {
var name : String
var health = 100

init (n: String){
self.name = n
}

func displayHealth (){
print("Health = \(health)")
}

}

class Cat: Animal {
func growl () {
print("Rawr!")
}
func run () {
print("Running")
health -= 10
}
}

var cat: Cat = Cat(n: "Tom")
cat.health = 150

class Cheetah : Cat{
 override func run () {
     if(health >= 50){
print("Running Fast")
health -= 50}
else{
   print("health is over")
   sleep()
}
}

func sleep (){
if((health + 50) < 200){
health += 50}
}
}

class Lion : Cat {
  override init(n: String) {
    super.init(n: n)
     self.health = 200
    }
    
    
override func growl() {
    print("ROAR!!!! I am the King of the Jungle")
}

}

var c: Cheetah = Cheetah(n: "cheetah")
c.run()
c.run()
c.run()
c.run()
print(c.displayHealth())
var l: Lion  = Lion(n: "lion")
l.run()
l.run()
l.run()
l.growl()