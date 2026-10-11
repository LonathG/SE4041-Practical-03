// Exercise 06: Structures, Computed Properties, Methods, Classes, and Reference Types
// Module: SE4041 Mobile Application Design & Development

// Basic Struct
struct StudentSimple {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let studentSimple = StudentSimple(name: "Amal", mark: 72)
print(studentSimple.name)
print(studentSimple.mark)
print(studentSimple.registered)

// Computed Properties
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

// Struct with Computed Grade
enum GradeEnum: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct StudentModel {
    var name: String
    var mark: Int

    var grade: GradeEnum {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }
}

let studentModel = StudentModel(name: "Amal", mark: 72)
print(studentModel.name)
print(studentModel.grade.rawValue)

// Methods and mutating methods
struct StudentMethod {
    var name: String
    var mark: Int

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let studentMethodInstance = StudentMethod(name: "Kamal", mark: 75)
studentMethodInstance.displayDetails()

struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

// Classes
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// Value Type vs Reference Type Example
struct Point {
    var x = 0
}
var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99
print("Struct First Point X: \(firstPoint.x)")
print("Struct Second Point X: \(secondPoint.x)")

class CounterClass {
    var count = 0
}
let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99
print("Class First Counter: \(firstCounter.count)")
print("Class Second Counter: \(secondCounter.count)")
