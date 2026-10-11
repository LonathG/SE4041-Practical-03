// Exercise 01: Functions, Argument Labels, and Default Parameters
// Module: SE4041 Mobile Application Design & Development

// Step 1: A Simple Function
func greet() {
    print("Welcome to SE4041")
}
greet()

// Step 2: Function with a Parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}
greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a Value
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}
let result = grade(for: 68)
print(result)

// Activity 1: calculateAverage function
func calculateAverage(_ m1: Double, _ m2: Double, _ m3: Double) -> Double {
    return (m1 + m2 + m3) / 3.0
}
let avgResult = calculateAverage(75.0, 82.0, 68.0)
print(avgResult)

// Argument Labels
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label with _
func double(_ number: Int) -> Int {
    return number * 2
}
print(double(10))

// Default Parameter Values
func resultWithDefault(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(resultWithDefault(68))
print(resultWithDefault(68, passMark: 75))

// Activity 2: finalResult function
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))
