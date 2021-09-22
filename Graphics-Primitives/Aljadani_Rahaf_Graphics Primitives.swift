import Foundation


//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

struct Point {
    var X: Double             
    var Y: Double
    

}
//Create a Line struct that has a "Start" and "End" property both of type Point

struct Line {
    var Start: Point             
    var End: Point

init (S1: Double , S2: Double , E1: Double , E2: Double) {
    Start = Point(X: S1, Y: S2) 
    End = Point(X: E1, Y: E2)
}
    
//In the Line struct add a function to return the Length of the created line as a Double.

    func Length()-> Double {
         let s : Double = (End.X - Start.X)
         let e : Double = (End.Y - Start.Y)
         let result : Double = sqrt(pow(s,2) + pow(e,2))
    return result
  }

}

//Create a Triangle Struct that contains a property called "Points" which is an array of type Point

struct Triangle {
    var points: [Point] = []
    
    init (S1: Double , S2: Double ,M1: Double , M2: Double, E1: Double , E2: Double) {
    //points: [Point(x:1,y:1), Point(x:4,y:3), Point(x:4,y:1)]
    points.append(Point(X: S1, Y: S2)) 
     points.append(Point(X: M1, Y: M2))
    points.append(Point(X: E1, Y: E2))
}

//(Optional) Notice this optional can be quite hard! 
//Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.

   func areaOfTriangle()-> Double {
        let A = self.points[0]
		let B = self.points[1]
		let C = self.points[2]
		
		let area = abs(A.X * (B.Y - C.Y) +	B.X * (C.Y - A.Y) +	C.X * (A.Y - B.Y))/2
   
        return area
  }

}

let line = Line(S1: 1 , S2:4 , E1: 5 , E2:8)
print(line.Length())

var t = Triangle(S1: 1 , S2: 1 ,M1: 5 , M2: 7, E1: 5 , E2: 1)
print(t.areaOfTriangle())