// Exercise 05: Enumerations
// Module: SE4041 Mobile Application Design & Development

enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
direction = .south

enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered
switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}

// Raw Values
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)

// Activity 6: ModuleStatus Enumeration
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let currentModuleStatus = ModuleStatus.inProgress
print(currentModuleStatus.rawValue)
