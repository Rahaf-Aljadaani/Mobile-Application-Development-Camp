import Foundation
//Write a program that adds the numbers 1-255 to an array
var arr : [Int] = []
for i in 1...255 {
    arr.append(i)
}
//Swap two random values in the array
arr.swapAt(Int.random(in: 1...255),Int.random(in : 1...255))
//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
//for i in 1...100 {
  //  arr.swapAt(Int.random(in: 1...255),Int.random(in: 1...255))
//}

arr = arr.shuffled()

// Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life,
// the Universe, and Everything at index __" and print the index of where "42" was before you removed it.
var j : Int = 0;
for i in arr {
    if (i == 42){
    print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(j)")
    print("\(arr[j])")//42
    arr.remove(at: j)
    break;
    }
    j+=1
}
