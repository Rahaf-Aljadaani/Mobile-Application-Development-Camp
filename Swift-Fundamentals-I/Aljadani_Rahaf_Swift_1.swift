import Foundation

let type: Float = 3.5 //"Rectangle" // error
let description: String = "A quadrilateral with four right angles"
var width: Int = 5
var height: Int = 10  //10.5 // error
var area: Double = Double( width * height )//width * height
height += 1
width += 1
area = Double( width * height ) //  width * height // error
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")

