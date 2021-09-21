import Foundation
//without recursion

print("Enter the String for check: ")
let test  = readLine()
var reverse : String = ""

if let str = test {
   
let len = str.count / 2
var x : Int = 0;
    for i in 0..<len {
        let start = str.index(str.startIndex, offsetBy: i)
        let end = str.index(str.endIndex, offsetBy: (i * -1) - 1)

        if str[start] != str[end] {
        print("\(str) is not a palindrome") 
        x=1
        }
       
    }
    
     if (x==0) {
        print("\(str) is a palindrome") 
            
        }

}
