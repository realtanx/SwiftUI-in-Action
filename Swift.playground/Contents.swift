import UIKit

var counter = 0
counter += 1
//counter ++  // Error: No ++ in Swift

// type inference
let a = 3.0
let b = Double(3)
let c = 3 as Double

let char: Character = "a"
let str = "bc"


let mixed = (2, 3.0) // type: (Int, Double)
let point: (Int, Int) = (1, 0)
point.0
point.1
let pointNamed = (x: 1, y: 2)
pointNamed.x
pointNamed.y

let coordinates3D = (x: 1, y: 2, z: 3)
let (x1, y1, z1) = coordinates3D
x1
y1
z1
let (x2, y2, _) = coordinates3D
x2
y2


typealias Coordinates = (Int, Int)
let origin: Coordinates = (0, 0)


var sum = 1
repeat {
    sum += 1
} while sum < 1

//do {
//    sum += 1
//} while sum < 1
// 'do-while' statement is not allowed

for i in 1...10 {
    sum += 1
}

var num = 5
switch num {
case 0:
    print("Zero")
case 1:
    break
default:
    break
}

switch num {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}


// partial matching
let point3D = (x: 0, y: 0, z: 5)
switch point3D {
case (0, 0, 0):
    print("Origin")
case (_, 0, 0):
    print("On the x-axis")
case (0, _, 0):
    print("On the y-axis")
case (0, 0, let z):
    print("On the z-axis, z is \(z)")
default:
    print("Somewhere else")
}

