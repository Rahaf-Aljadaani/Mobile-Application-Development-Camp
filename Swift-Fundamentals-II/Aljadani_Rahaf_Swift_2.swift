import Foundation

//Print all values from 1-255
for i in 1...255 {
    print(i)
}

//Print all values from 1-100 that are divisible by 3 or 5 but not both
for i in 1...100 {
if (i % 3 == 0 && i % 5 == 0) {
   continue
}
if (i % 3 == 0) {
    print(i)
}
if (i % 5 == 0){
    print(i)
}

}

// print all values from 1-100, but replace the number with "Fizz" when the number is divisible by 3,
// "Buzz" when the number is divisible by 5, and "FizzBuzz" when the number is divisible by both!
for i in 1...100 {
if (i % 3 == 0 && i % 5 == 0) {
    print("FizzBuzz")
    continue
}
if (i % 3 == 0) {
    print("Fizz")
}
if (i % 5 == 0){
    print("Buzz")
}

}

