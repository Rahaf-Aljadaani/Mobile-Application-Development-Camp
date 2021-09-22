import Foundation
print("Enter the String for check: ")
let test  = readLine()
var reverse : String = ""

if let str = test {
       if  String(str.reversed()) == str {
       print("\(str) is a palindrome")
       
        }
     else  {
         print("\(str) is not a palindrome")  
            
        }
}